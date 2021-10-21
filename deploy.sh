#! /bin/bash

if [ -n "$1" ]; then
  contract=$1
  echo "Contract set to $1"
else
  echo "You need to specify a contract to deploy"
fi


if [ -n "$2" ]; then
  account=$2
  echo "Account set to $2"
else
  echo "You need to specify an account to deploy the contract to"
fi

url=http://127.0.0.1:8080

echo ">>> Deploying $contract contract to $account"

cleos -u $url set contract $account ./build/$contract/ $contract.wasm $contract.abi -p $account
