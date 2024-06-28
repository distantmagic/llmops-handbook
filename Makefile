.PHONY: serve
serve:
	mdbook serve \
		--hostname 127.0.0.1 \
		--port 3000 \
		--watcher native
