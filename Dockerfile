FROM afcowie/haskell
MAINTAINER engineering@anchor.com.au

RUN apt-get install --force-yes ca-certificates git

ADD apt/source.list.d/ceph.list /etc/apt/sources.list.d/ceph.list
RUN wget -q -O- 'https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc' | apt-key add -
RUN apt-get update

RUN apt-get install --force-yes librados-dev

WORKDIR /src
RUN git clone https://github.com/anchor/vaultaire-common
RUN git clone https://github.com/anchor/marquise
RUN git clone https://github.com/anchor/vaultaire

RUN cabal install -j4 /src/vaultaire-common /src/marquise /src/vaultaire

