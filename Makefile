mermaid-init.js mermaid.min.js:
	mdbook-mermaid install .

.PHONY: build
build: mermaid-init.js mermaid.min.js
	mdbook build

.PHONY: clean
clean:
	rm mermaid-init.js
	rm mermaid.min.js

.PHONY: serve
serve: mermaid-init.js mermaid.min.js
	mdbook serve \
		--hostname 127.0.0.1 \
		--port 3000 \
		--watcher native
