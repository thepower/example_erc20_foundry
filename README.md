# example of deploying a erc20 token using foundry

install foundry https://book.getfoundry.sh/getting-started/installation#using-foundryup

```
curl -L https://foundry.paradigm.xyz | bash
```

clone this repository and initialize submodules

```
git submodule init
git submodule update
```

generate new key for deployment

```
cast wallet new
```

save private key to environment variable

```
export DEVNET_PRIVATE_KEY=...
```

Go to faucet `https://faucet.thepower.io/` and get some testnet tokens

Open file script/TokenScript.s.sol with your favorite editor and change the name of the token.
Also uncomment mint command and replace example address with your own address. Address should be in
ethereum format (0x...), in case of you have a address in power format it should be converted to 20
bytes format (0x + 40 characters).

```
sh deploy.sh
```

Int this example ERC20 token allows minting for everybody. To mint tokens use the following command:


```
cast send --private-key=$DEVNET_PRIVATE_KEY --legacy --rpc-url https://c3n1.thepower.io:1446/jsonrpc  <MyToken contract address> "mint(address,uint256)" <Your wallet address> 400000000000000000000
```


