#!/usr/bin/env bash

# Simple script to run gigahorse with the specified parameters
./build_and_extract.sh
# ./gigahorse.py examples/test.hex -C aa.dl --restart --debug

./gigahorse.py examples/test.hex -C aa.dl --rerun_clients --debug