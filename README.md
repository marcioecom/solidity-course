# Solidity Smart Contract Development

Contracts developed during the [Solidity Smart Contract Development](https://updraft.cyfrin.io/) course from Cyfrin Updraft. All contracts were written and tested in [Remix IDE](https://remix.ethereum.org/).

- Solidity 0.8.30
- Chainlink Price Feeds (Sepolia testnet)

## Contracts

### 1. Simple Storage

`simple-storage/SimpleStorage.sol`

Introductory contract covering Solidity fundamentals: data types, structs, dynamic arrays, mappings, and read/write functions.

- Stores and retrieves a favorite number
- Manages a list of people with their favorite numbers
- Name-to-number mapping for quick lookup

### 2. Storage Factory

`factory-storage/`

Demonstrates contract composition, the factory pattern, and inheritance.

- **StorageFactory.sol** - Creates and manages multiple SimpleStorage instances, allowing interaction with each one by index
- **AddFiveStorage.sol** - Inherits from SimpleStorage and overrides the `store` function to add 5 to the stored value (demonstrates `override`)

### 3. Fund Me

`fund-me/`

Crowdfunding contract that accepts ETH with a minimum USD value, using Chainlink Oracle for price conversion.

- **FundMe.sol** - Main contract with `fund` and `withdraw` functions, access control via `onlyOwner` modifier, custom error `NotOwner`, `constant` and `immutable` variables for gas optimization, and `receive`/`fallback` functions
- **PriceConverter.sol** - Library that queries the Chainlink Price Feed (ETH/USD) on Sepolia to convert ETH values to USD

## Concepts covered

- Data types, structs, arrays, and mappings
- View/pure functions, visibility, and modifiers
- Inheritance and function overriding
- Libraries and `using ... for`
- Chainlink Price Feeds and oracles
- Custom errors vs require with strings
- Gas optimization with `constant` and `immutable`
- ETH transfer patterns (transfer, send, call)
- Factory pattern
