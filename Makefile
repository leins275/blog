HUGO ?= hugo
HUGO_ENVIRONMENT ?= production
HUGO_ENV ?= production
BASE_URL ?= http://localhost:1313/
PORT ?= 1313

TYPST ?= typst
PDF_DIR := public/files
CV_NAME := nikita-lanskov-senior-software-engineer

INTER_VERSION ?= 4.1
FONT_DIR := $(HOME)/.local/share/fonts/inter

export HUGO_ENVIRONMENT
export HUGO_ENV

.PHONY: run build clean pdf install-fonts

run:
	$(HUGO) server --gc --minify --baseURL "$(BASE_URL)" --port $(PORT) --bind 0.0.0.0

build:
	$(HUGO) --gc --minify --baseURL "$(BASE_URL)"

clean:
	rm -rf public resources/_gen

# Build the CV PDFs from Typst sources into public/files/. Independent of Hugo
# (no HTML rendering step). Install typst with `cargo install --locked typst-cli`
# or grab a binary from https://github.com/typst/typst/releases.
pdf:
	@command -v $(TYPST) >/dev/null 2>&1 || { echo "typst not found in PATH. Install: cargo install --locked typst-cli, or https://github.com/typst/typst/releases" >&2; exit 1; }
	@mkdir -p $(PDF_DIR)
	$(TYPST) compile cv/cv.en.typ $(PDF_DIR)/$(CV_NAME).pdf
	$(TYPST) compile cv/cv.ru.typ $(PDF_DIR)/$(CV_NAME)-ru.pdf

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
