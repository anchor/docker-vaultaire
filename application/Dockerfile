FROM anchor.private/engineering/vaultaire:dependencies
MAINTAINER engineering@anchor.com.au

WORKDIR /src/vaultaire-common
RUN git pull

WORKDIR /src/marquise
RUN git pull

WORKDIR /src/vaultaire
RUN git pull

WORKDIR /
RUN cabal install -j \
	/src/vaultaire-common /src/marquise /src/vaultaire

