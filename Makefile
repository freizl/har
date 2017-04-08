default: build

hlint:
	stylish-haskell -i src/**/*.hs
	hlint src/**/*.hs

clean:
	stack clean
	cabal clean

build: clean
	stack build

watch:
	stack build --file-watch
