HUGO ?= hugo
HUGO_ENVIRONMENT ?= production
HUGO_ENV ?= production
BASE_URL ?= http://localhost:1313/
PORT ?= 1313

CHROME ?= chromium
PDF_DIR ?= public/files
CV_NAME := Nikita-Lanskov-Senior-Software-Engineer

export HUGO_ENVIRONMENT
export HUGO_ENV

.PHONY: run build clean pdf

run:
	$(HUGO) server --gc --minify --baseURL "$(BASE_URL)" --port $(PORT) --bind 0.0.0.0

build:
	$(HUGO) --gc --minify --baseURL "$(BASE_URL)"

clean:
	rm -rf public resources/_gen

# Render the CV web page to PDF via headless Chrome. Spins up a temporary
# hugo server on 127.0.0.1:1313, drives chromium --print-to-pdf against
# /cv/ and /ru/cv/, then tears the server down. Writes PDFs into public/files/.
pdf:
	@mkdir -p $(PDF_DIR)
	@( $(HUGO) server --port 1313 --baseURL http://localhost:1313/ --bind 127.0.0.1 \
	     --disableLiveReload --renderToMemory > /dev/null 2>&1 & \
	   HUGO_PID=$$!; \
	   trap "kill $$HUGO_PID 2>/dev/null" EXIT; \
	   sleep 2; \
	   $(CHROME) --headless --no-sandbox --disable-gpu --disable-dev-shm-usage \
	     --hide-scrollbars --no-pdf-header-footer \
	     --print-to-pdf=$(PDF_DIR)/$(CV_NAME).pdf \
	     http://localhost:1313/cv/ && \
	   $(CHROME) --headless --no-sandbox --disable-gpu --disable-dev-shm-usage \
	     --hide-scrollbars --no-pdf-header-footer \
	     --print-to-pdf=$(PDF_DIR)/$(CV_NAME)-RU.pdf \
	     http://localhost:1313/ru/cv/ \
	)
