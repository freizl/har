default: build

hlint:
	stylish-haskell -i src/**/*.hs
	hlint src/**/*.hs

clean:
	cabal clean

build: clean
	cabal configure
	cabal build
