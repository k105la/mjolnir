#!/bin/bash

MN_REPO=https://github.com/micronucleus/micronucleus.git
T85=t85_default

if [ ! -d /micronucleus ]; then
	git clone $MN_REPO
fi

cd micronucleus/firmware && make config=$t85 fuse && make config=$t85 flash && rm -rf micronucleus/

