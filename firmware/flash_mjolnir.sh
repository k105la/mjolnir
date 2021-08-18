#!/bin/bash

MN_REPO=https://github.com/micronucleus/micronucleus.git
T85=t85_default
PROGRAMMER=atmelice_isp # CHANGE IF NEEDED.

if [ ! -d /micronucleus ]; then
	git clone $MN_REPO
fi

cd micronucleus/firmware && make config=$t85 fuse && rm -rf micronucleus/

avrdude -c $PROGRAMMER -p t85 -U flash:r:t85_default.hex:i -B 20
