#! /bin/bash

git clone https://github.com/EOSIO/eosio.contracts.git

cd eosio.contracts

./build.sh -c /usr/local/eosio.cdt

cd ../config
dfuseeos start > dfuse.log &

sleep 5

cleos wallet create --file wallet.pass
cleos wallet import --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
cleos create account eosio eosio.token EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV

cleos -u http://127.0.0.1:8080 set contract eosio.token ../eosio.contracts/build/contracts/eosio.token eosio.token.wasm eosio.token.abi -p eosio.token

gp preview $(gp url 8080)/graphiql
