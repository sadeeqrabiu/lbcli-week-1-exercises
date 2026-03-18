# Write the bitcoin cli command to get the bitcoin node network name

bitcoin-cli getnetworkinfo | grep -o '"name": "[^"]*' | cut -d '"' -f 4
