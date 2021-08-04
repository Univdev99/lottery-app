# Lottery-app Description

Language: Solidity
Objective: Create a set of contracts to create a lottery app
Requirements:
- the creator sets the number of tickets and ticket price
- participants can buy as many tickets as are available
- the prize is awarded to a random participant once all tickets are sold
- the creator must purchase the first ticket on creation
Expectations:
- Create a public repo
- Write documentation
- Bonus points for TDD

## lottery-app setup

### Install

To install the needed packages run:

`yarn` or `npm install`

### Hardhat Compile

To compile the smart contracts run:

`npx hardhat compile`

### Test

To run the tests for the smart contracts run:

`npx hardhat test`

### Test coverage

For the test converge of the contracts run:

`yarn cover` or `npm run cover`

There are multiple mock contracts that have been created for testing purposes. These have been excluded from the coverage. For more information check the [.solcover.js](./.solcover.js).

### Deploy

To deploy the contracts locally run:

`yarn deploy:local` or `npm run deploy:local`

Note that deploying the contracts locally does not require any inputs.

### Design Notes

The `Lottery` and `LotteryNFT` contracts both inherit from a contract called `Testable`. This contract allows for simple time manipulation for testing purposes. 
For a non-local deployment the address of this contract can simply be set to 0 in the constructor and the contracts will use the current `block.timestamp`.