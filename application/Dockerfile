FROM anchor/vaultaire:dependencies
MAINTAINER engineering@anchor.com.au

WORKDIR /src/vaultaire-common
RUN git pull

WORKDIR /src/marquise
RUN git pull

WORKDIR /src/vaultaire
RUN git pull

WORKDIR /
RUN cabal install -j4 \
	/src/vaultaire-common /src/marquise /src/vaultaire

