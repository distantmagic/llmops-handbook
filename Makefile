ESBUILD_TARGET_DIRECTORY ?= assets
TS_ENTRYPOINTS := $(wildcard resources/ts/global_*.ts)
TS_SOURCES := $(wildcard resources/ts/*.ts)

assets/global_mermaid.js: $(TS_SOURCES) .pnp.cjs
	yarnpkg run esbuild \
		--bundle \
		--asset-names="./[name]" \
		--entry-names="./[name]" \
		--format=iife \
		--loader:.jpg=file \
		--loader:.otf=file \
		--loader:.svg=file \
		--loader:.ttf=file \
		--loader:.webp=file \
		--outdir=$(ESBUILD_TARGET_DIRECTORY) \
		--sourcemap \
		--target=safari16 \
		--tree-shaking=true \
		--tsconfig=tsconfig.json \
		$(TS_ENTRYPOINTS) \
	;

.pnp.cjs: yarn.lock
	yarnpkg install --immutable
	touch .pnp.cjs

.PHONY: build
build: assets/global_mermaid.js
	mdbook build

.PHONY: clean
clean:
	rm -rf ./assets

.PHONY: serve
serve: assets/global_mermaid.js
	mdbook serve \
		--hostname 127.0.0.1 \
		--port 3000 \
		--watcher native
