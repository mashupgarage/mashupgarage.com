# make            - build site (prod)
# make start      - start server (dev)

PORT ?= 3000
bundle := env bundle

all: bundle
	${bundle} exec jekyll build --drafts

start: bundle
	${bundle} exec jekyll serve --drafts --watch --port ${PORT}

bundle:
	${bundle}
