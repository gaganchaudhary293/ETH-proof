# MyToken Smart Contract

## Overview

MyToken is an ERC-20-like token implemented on the Ethereum blockchain using Solidity. This smart contract allows for the creation, minting, and burning of tokens. It maintains a mapping of addresses to their balances and includes functions to adjust the total supply of the token.

## Features

- **Token Details:** Public variables store the token's name, symbol, and total supply.
- **Balances Mapping:** A mapping to keep track of each address's balance.
- **Mint Function:** Allows tokens to be minted (created) and assigned to a specified address.
- **Burn Function:** Allows tokens to be burned (destroyed) from a specified address, ensuring the address has sufficient balance before burning.

## Smart Contract Details

### Public Variables

- `name`: The name of the token (e.g., "MyToken").
- `symbol`: The abbreviation of the token (e.g., "MTK").
- `totalSupply`: The total supply of the token in circulation.

### Mapping

- `balances`: A mapping that tracks the balance of each address.

### Functions

#### Mint Function

```solidity
function mint(address _to, uint256 _value) public
