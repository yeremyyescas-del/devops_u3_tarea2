.PHONY: build clean post help

build: ## Build the website using Hugo
	hugo -d dist

clean: ## Remove generated files
	rm -rf dist

post: ## Create a new blog post (use POST_NAME=name)
	hugo new posts/$(POST_NAME).md

help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## ' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "%-10s %s\n", $$1, $$2}'

package:
	zip -r awesome-website.zip .
