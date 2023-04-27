# XRPL EVM Sidechain Demo
## XRPL EVM Devnet Sidechain Quickstart

|EVM Dev|Resource|
|---|---|
|Faucet|https://faucet-frontend-mocha.vercel.app/|
|Explorer|https://evm-sidechain.xrpl.org/|
|RPC|https://rpc-evm-sidechain.xrpl.org/|
|ChainId|1440001|

|XRPL Resources|Link|
|---|---|
|Docs|https://xrpl.org/|
|Grants|https://xrplgrants.org/|
|Demo Game|https://hazards-cookies-frontend.vercel.app/|

## Deploying the contract and verifying
Note: This example requires [foundry](https://github.com/foundry-rs/foundry) to be installed on your computer.

Deploy the contract with the following command:
```
$ forge create --rpc-url https://rpc-evm-sidechain.xrpl.org \
    --private-key <private-key> \
    src/Example.sol:Example
```

Verify the contract with the following command:
```
forge verify-contract  --chain-id 1440001 --verifier=blockscout \
--verifier-url=https://evm-sidechain.peersyst.tech/api  <contract>   src/Example.sol:Example
```

Local blockchain w/ Anvil:
```
forge script script/Example.s.sol:Example --fork-url http://localhost:8545 \
--private-key $PRIVATE_KEY --broadcast
```
