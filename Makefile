# make            - build site (prod)
# make start      - start server (dev)

PORT ?= 3000
bundle := env BUNDLE_GEMFILE=./_/Gemfile bundle

all: bundle
	${bundle} exec jekyll build --drafts

start: bundle
	${bundle} exec jekyll serve --drafts --watch --port ${PORT}

bundle:
	${bundle}
