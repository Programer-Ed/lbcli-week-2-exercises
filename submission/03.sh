# Create a SegWit address.
# Add funds to the address.
# Return only the Address

bitcoin-cli -regtest loadwallet "btrustwallet" > /dev/null 2>&1 || \
bitcoin-cli -regtest createwallet "btrustwallet" > /dev/null 2>&1

ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32 )

bitcoin-cli -regtest generatetoaddress 101 "$ADDRESS" > /dev/null

echo "$ADDRESS"