# example of deploying a erc20 token using foundry

```
git submodule init
git submodule update
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
