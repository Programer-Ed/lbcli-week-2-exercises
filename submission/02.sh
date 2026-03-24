# Create a new Bitcoin address, for receiving change.

bitcoin-cli -regtest loadwallet "btrustwallet" > /dev/null 2>&1 || \
bitcoin-cli -regtest createwallet "btrustwallet" > /dev/null 2>&1

bitcoin-cli -regtest getrawchangeaddress 