FROM anchor.private/afcowie/haskell
MAINTAINER engineering@anchor.com.au

RUN apt-get install ca-certificates git
RUN apt-get install librados-dev libzmq3-dev pkg-config

WORKDIR /src
RUN git clone https://github.com/anchor/vaultaire-common
RUN git clone https://github.com/anchor/marquise
RUN git clone https://github.com/anchor/vaultaire

RUN cabal install -j --only-dependencies \
	/src/vaultaire-common /src/marquise /src/vaultaire

