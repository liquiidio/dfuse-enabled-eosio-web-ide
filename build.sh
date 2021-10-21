#! /bin/bash

if [ -n "$1" ]; then
  contract=$1
  echo "Contract set to $1"
else
  echo "You need to specify a contract to build"
fi

mkdir ./build
mkdir ./build/$contract

echo ">>> Building $contract contract..."

eosio-cpp -I="./contracts/$contract/include/" -R="./contracts/$contract/resources" -o="./build/$contract/$contract.wasm" -contract="$contract" -abigen ./contracts/$contract/src/$contract.cpp
