#!/usr/bin/env bash

# Exit immediately on error
set -e

# 1) Build the contract with Foundry
forge build --force

# 2) Extract the hex string from the deployedBytecode.object field using jq
hex="$(jq -r '.deployedBytecode.object' out/test.sol/TestGi.json)"

# 3) Write (or append) the hex string to a file
echo "$hex" > examples/test.hex

echo "Hex wrote to examples/test.hex:"
echo "$hex"
