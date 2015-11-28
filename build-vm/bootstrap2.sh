#!/usr/bin/env bash

# Compliling corestar
cd /usr/local/corestar
./configure --prefix /usr/local/corestar
make
make test