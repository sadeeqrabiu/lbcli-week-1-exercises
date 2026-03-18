# Write the bitcoin cli command to get the bitcoin node network name

bitcoin-cli -regtest getnetworkinfo | grep -o '"name": "[^"]*' | cut -d '"' -f 4
