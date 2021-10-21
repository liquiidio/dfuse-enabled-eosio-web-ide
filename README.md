

# dfuse-enabled eosio-web-ide

A dfuse-enabled eosio-web-ide based on gitpod

- bootstrap your dfuse-enabled eosio development-environment with a single click
- develop and compile smart contracts using eosio-cpp or cmake within the ide
- start a local blockchain and dfuse-instance within the ide, deploy smart contracts and connect your dapps frontend to the services running within the web-ide

### Setup

1.  Fork this repo to your personal GitHub account so that you can save your work into your personal Github account.
    
 2. Click the Gitpod-Button in the forked repository and allow Gitpod to run, to start the your dfuse-enabled development environment

3. run the test-script via

		./test.sh

	to download and compile the latest eosio-contracts to then automatically start a local blockchain and dfuse-instance and deploy the token-contract.


### Dfuse
use the graphiql-editor opening in the preview-window or by running

    `gp preview $(gp url 8080)/graphiql`

after your local blockchain and dfuse-instance started, to create subscriptions to listen to events happening on your local blockchain. 

set the subscription-data to
 
    {
	  "query": "account:eosio",
	  "cursor": "",
	}
	
to listen to new blocks.

Subscribe to the graphiql-endpoints hosted by your gitpod-environment with your frontend

For more information on dfuse follow https://docs.dfuse.eosnation.io/

### Smart Contract Development
For general information on eosio based smart contract development, follow the following sources:

- https://developers.eos.io/welcome/latest/getting-started-guide/index
- https://eosio.stackexchange.com/
- https://github.com/EOSIO/eosio-web-ide
