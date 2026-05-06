HUGO ?= hugo
HUGO_ENVIRONMENT ?= production
HUGO_ENV ?= production
BASE_URL ?= http://localhost:1313/
PORT ?= 1313

export HUGO_ENVIRONMENT
export HUGO_ENV

.PHONY: run build clean

run:
	$(HUGO) server --gc --minify --baseURL "$(BASE_URL)" --port $(PORT) --bind 0.0.0.0

build:
	$(HUGO) --gc --minify --baseURL "$(BASE_URL)"

clean:
	rm -rf public resources/_gen
