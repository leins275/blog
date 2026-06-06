HUGO ?= hugo
HUGO_DIR := hugo
HUGO_ENVIRONMENT ?= production
HUGO_ENV ?= production
BASE_URL ?= http://localhost:1313/
PORT ?= 1313

ASTRO_DIR := astro
ASTRO_PORT ?= 4321

TYPST ?= typst
CLAUDE ?= claude
PDF_DIR := $(HUGO_DIR)/public/files
CV_DIR := cv
CV_SRC_DIR := $(CV_DIR)/sources
CV_TEMPLATE := $(CV_DIR)/template.typ
CV_NAME := nikita-lanskov-senior-software-engineer

INTER_VERSION ?= 4.1
FONT_DIR := $(HOME)/.local/share/fonts/inter

export HUGO_ENVIRONMENT
export HUGO_ENV

.PHONY: run build clean pdf cv install-fonts \
        astro-install astro-run astro-build astro-check astro-clean \
        backfill-previews

run:
	$(HUGO) server --source $(HUGO_DIR) --gc --minify --baseURL "$(BASE_URL)" --port $(PORT) --bind 0.0.0.0

build:
	$(HUGO) --source $(HUGO_DIR) --gc --minify --baseURL "$(BASE_URL)"

clean:
	rm -rf $(HUGO_DIR)/public $(HUGO_DIR)/resources/_gen

# Astro pipeline (new SSG, sibling to hugo/). Reads ../content/ via the content
# collection glob loaders. Coexists with the Hugo targets above during cutover.
astro-install:
	cd $(ASTRO_DIR) && npm install --no-audit --no-fund

astro-run:
	cd $(ASTRO_DIR) && npm run dev -- --host --port $(ASTRO_PORT)

astro-build:
	cd $(ASTRO_DIR) && npm run build

astro-check:
	cd $(ASTRO_DIR) && npm run check

astro-clean:
	rm -rf $(ASTRO_DIR)/dist $(ASTRO_DIR)/.astro

# One-shot: walk content/posts/**/index.{en,ru}.md, inject `preview: ./preview.jpg`
# into frontmatter when a sibling preview.jpg exists and the field is missing.
# Idempotent; safe to re-run. Needed for Astro's image() schema to resolve covers.
backfill-previews:
	uv run --with pyyaml python scripts/backfill-preview-frontmatter.py

# Build the CV PDFs from Typst sources into public/files/. Independent of Hugo
# (no HTML rendering step). Install typst with `cargo install --locked typst-cli`
# or grab a binary from https://github.com/typst/typst/releases.
pdf:
	@command -v $(TYPST) >/dev/null 2>&1 || { echo "typst not found in PATH. Install: cargo install --locked typst-cli, or https://github.com/typst/typst/releases" >&2; exit 1; }
	@mkdir -p $(PDF_DIR)
	$(TYPST) compile $(CV_DIR)/cv.en.typ $(PDF_DIR)/$(CV_NAME).pdf
	$(TYPST) compile $(CV_DIR)/cv.ru.typ $(PDF_DIR)/$(CV_NAME)-ru.pdf

# Full CV rebuild: regenerate typst from markdown sources via the cv-builder
# skill, then compile PDFs. The md→typ step is agentic (creative consolidation)
# so it shells out to `claude` in headless mode; the typ→pdf step is the
# deterministic `pdf` target.
cv: $(CV_DIR)/cv.en.typ $(CV_DIR)/cv.ru.typ pdf

$(CV_DIR)/cv.en.typ: $(CV_SRC_DIR)/cv.en.md $(CV_TEMPLATE)
	@command -v $(CLAUDE) >/dev/null 2>&1 || { echo "claude CLI not found in PATH" >&2; exit 1; }
	$(CLAUDE) -p --allowed-tools "Read,Write,Edit" \
	  "Invoke the project-scoped cv-builder skill. Source: $<. Language: en. Output: $@. Template: $(CV_TEMPLATE). Mode: Overview (no position description). Overwrite $@ in place. Do not narrate; just produce the file."

$(CV_DIR)/cv.ru.typ: $(CV_SRC_DIR)/cv.ru.md $(CV_TEMPLATE)
	@command -v $(CLAUDE) >/dev/null 2>&1 || { echo "claude CLI not found in PATH" >&2; exit 1; }
	$(CLAUDE) -p --allowed-tools "Read,Write,Edit" \
	  "Invoke the project-scoped cv-builder skill. Source: $<. Language: ru. Output: $@. Template: $(CV_TEMPLATE). Mode: Overview (no position description). Overwrite $@ in place. Do not narrate; just produce the file."

# One-time setup: download Inter into the user's font dir and refresh the
# system font cache so typst can resolve "Inter". Idempotent; safe to re-run.
# Skip if your system already has Inter (check with: typst fonts | grep -i inter).
install-fonts:
	@mkdir -p $(FONT_DIR)
	@tmp=$$(mktemp -d) && \
	  curl -fsSL https://github.com/rsms/inter/releases/download/v$(INTER_VERSION)/Inter-$(INTER_VERSION).zip -o $$tmp/inter.zip && \
	  unzip -o -j $$tmp/inter.zip 'extras/ttf/*.ttf' -d $(FONT_DIR) && \
	  rm -rf $$tmp
	@command -v fc-cache >/dev/null 2>&1 && fc-cache -f $(FONT_DIR) || true
	@echo "Installed Inter v$(INTER_VERSION) to $(FONT_DIR)"
