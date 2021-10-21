#! /bin/bash

cd config
dfuseeos start &

cleos wallet create --file wallet.pass
cleos create account eosio violet EOS83mnzQ9ArDxeDYSxydB3jQS9YFSP8Z89HcXgSx5JbbQTTkNvF8
cleos wallet import --private-key 5JS1tKDuGSVifTA7paMzyWLVhkm2MbjAt7vqpUP6Sv7xwPaEfpP

cd ..
./deploy.sh violet violet local
