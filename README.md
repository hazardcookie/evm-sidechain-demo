# Eth-Denver

faucet: `https://faucet-frontend-mocha.vercel.app/`

rpc: `https://rpc-evm-sidechain.xrpl.org`

grants: `https://xrplgrants.org/`

xrpl docs: `xrpl.org`

## Deploying the contract and verifying
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

Local blockchain:
```
forge script script/Example.s.sol:Example --fork-url http://localhost:8545 \
--private-key $PRIVATE_KEY --broadcast
```