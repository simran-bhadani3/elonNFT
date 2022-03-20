## Links for test Eth (Rinkeby Test Network)
https://faucets.chain.link/rinkeby
https://rinkeby-faucet.com/
https://rinkebyfaucet.com/

## Alchemy settings
Environment: staging
Chain: Ethereum
Network: Rinkeby

## Install HardHat
npm install --save-dev hardhat

## Start HardHat
npx hardhat

## Installing dependencies
HardHat will prompt to install these dependencies on its own but if not the following command can be used:
npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai

## Installing openzeppelin
npm install @openzeppelin/contracts

## Deploy HardHat basic Hello World contract
npx hardhat run scripts/sample-script.js

