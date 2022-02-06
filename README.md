## Martian Token Crowdsale

### Objective

To raise a fictitious crowdsale that will allow people to convert their FIAT money to the new ERC-20 fungible token called **KaeiCoin(KAI)**. We will use `Remix`, `Solidity` and `Ganache` to deploy and test this crowdsale.

### What We're Creating
* Create and compile the **KaseiCoin Token Contract**, **KaseiCoin Crowdsale Contract** and **KaseiCoin Deployer Contract**.
* Deploy and Test the Crowdsale on a Local Blockchain.
* Run all the functions and validate the result and update all the resutls in [Evaluation_Evidence](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/tree/main/Evaluation_Evidence)

### Create and Compile
We created a [KaseiCoin Token Contract](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Final_Code/KaseiCoin.sol) and [KaseiCoin Crwodsale and Deployer Contract](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Final_Code/KaseiCoinCrowdsale.sol) where we used [ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol), [ERC20Detailed](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol), [ERC20Mintable](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol), [Crowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol) and [MintedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol) library from [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) and successfully compiled them using [Remix](https://remix.ethereum.org/)

* KaseiCoin Token Contract
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/1.successful_compilation_KAI.JPG)

* KaseiCoin Crwodsale Contract
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/2.compile_crowdsale.JPG)

* KaseiCoin Deployer Contract
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/3.compile_crwdsaledeployer.JPG)


### Deploy and Test

In below, there is an animated GIF to show all the steps to deploy and test this contract.
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/0.Crowdsale_minting.gif)

1. Compile all three contract and make sure there is no error.
2. Start up `Ganache` quickstart to create a test local blockchain and connect it to the `Metamask` walltet by importing private keys from ganache wallet to Metamask. Also in the metamask create a network using below information so that it can succesfully connect with Ganache blockchain. If connection is successful, all wallet should show a balance of `100 ETH`.
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/4.ganache_network.JPG)

3. Connet the Metamask to Remix IDE using Injected Web3 environment. If connected successfully, you will be prompted to connect the previously imported Ganache wallets to the Remix IDE.
4. By selecting any of the imported wallet, we can now deploy the `Crowdsale Deployer` contract. Remember to set `Name`=`KaseiCoin`, `Symbol`=`KAI` and `wallet`="`address of the wallet from which contract is deplyoing`". After successfully deplyed, we should be able to see the `kasei_crowdsale_address` and `kasei_token_address` to the left pane of remix.
5. 


