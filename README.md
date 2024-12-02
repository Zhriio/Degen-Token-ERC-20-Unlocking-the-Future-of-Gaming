# Creating a Custom Token: DegenToken

## Description
This project involves deploying a smart contract on the Avalanche blockchain to introduce a custom token named Degen (DGN).
The Degen token is designed to support in-game transactions, enabling players to transfer tokens to others and redeem rewards within the game.

## Getting Started

### Executing program
To run this program, you can utilize Remix, an online IDE for Solidity. Start by visiting the Remix website at https://remix.ethereum.org/.

Once there, create a new file by clicking the "+" icon in the left sidebar. Save this file with a .sol extension (e.g., `DegenToken.sol`). Next, find the file named `DegenToken.sol` in this project and copy the code from it into the newly created file on Remix.

To compile the code, navigate to the "Solidity Compiler" tab on the left sidebar. Ensure the "Compiler" version is set to "0.8.26" (or another compatible version), and then click the "Compile DegenToken" button.

In "Deploy&Run Transactions" tab, select "Injected Provider - MetaMask" as environment and DegenToken as contract before you click "Deploy".
Make sure your Metamask is also installed and fully configured to be connected to the Fuji Test network.

After the deployment, you can finally interact with the functions inside the contract.

### Contract functionalities
Minting New Tokens: The owner can mint tokens and distribute them to the players. 
Token Transfer: Players, as token holders, can transfer tokens to other players.
Token Redemption: Token holders can exchange their tokens for items available in the in-game store.
Balance Inquiry: Token holders should be able to see their token balance.
Token Burning: Token holders can burn unwanted tokens they own.

## Authors
Lance Benedict F. Feticio

202110075@fit.edu.ph
