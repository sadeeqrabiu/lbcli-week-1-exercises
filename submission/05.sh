# Check the total amount in the wallet.

# Mine blocks on regtest to fund the wallet (requires 101 blocks for coinbase maturity)
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null

bitcoin-cli -regtest -rpcwallet=builderswallet getbalance
