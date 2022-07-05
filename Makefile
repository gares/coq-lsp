.PHONY: coq_boot build build-all clean opam

COQ_BUILD_CONTEXT=../_build/default/coq

PKG_SET=coq/coq-core.install coq/coq-stdlib.install coq-serapi/coq-serapi.install coq-lsp.install

build: coq_boot
	dune build $(DUNEOPT) $(PKG_SET)

format: coq_boot
	dune fmt

watch: coq_boot
	dune build -w $(DUNEOPT) $(PKG_SET)

build-all: coq_boot
	dune build $(DUNEOPT) @all

coq/config/coq_config.ml:
	cd coq && ./configure -no-ask -prefix $(shell pwd)/_build/install/default/ -native-compiler no && cp theories/dune.disabled theories/dune

coq_boot: coq/config/coq_config.ml

clean:
	dune clean

# We first pin lablgtk3 as to avoid problems with parallel make
opam:
	opam pin add coq-lsp . --kind=path -y
	opam install coq-lsp

submodules-init:
	git submodule update --init
