## Martian Token Crowdsale

### Objective

To rasie a fictitious crowdsale that will allow people to convert their FIAT money to the new ERC-20 fungible token called **KaeiCoin(KAI)**. We will use `Remix`, `Solidity` and `Ganache` to deploy and test this crowdsale.

Here is a demo what we did by the end of this project
![alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/0.Crowdsale_minting.gif)


### What We're Creating
* Create and compile the **KaseiCoin Token Contract**, **KaseiCoin Crowdsale Contract** and **KaseiCoin Deployer Contract**.
* Deploy and Test the Crowdsale on a Local Blockchain.
* Run all the functions and validate the result.

### Create and Compile
We created a [KaseiCoin Token Contract](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Final_Code/KaseiCoin.sol) and [KaseiCoin Crwodsale and Deployer Contract](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Final_Code/KaseiCoinCrowdsale.sol) where we used [ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol),[ERC20Detailed](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol),[ERC20Mintable](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol), [Crowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol) and [MintedCrowdsale](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol) library from [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts) and successfully compiled them using [Remix](https://remix.ethereum.org/)

*KaseiCoin Token Contract
[alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/1.successful_compilation_KAI.JPG)

*KaseiCoin Crwodsale Contract
[alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/2.compile_crowdsale.JPG)

*KaseiCoin Deployer Contract
[alt=""](https://github.com/Ashfaque-Rahman/Martian_Token_Crowdsale/blob/main/Evaluation_Evidence/3.compile_crwdsaledeployer.JPG)


### Deploy and Test
In this stage we built a [platform ](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/fintech_finder.py) using `streamlit` liabrary to create the landing page of our wallet. It will be able to show our base wallet's address, Ether balance (which we created using `ganache` platform to create a demo blockchain) and all other professional address and hourly rate to take it to next step

#### Landing Page
![alt=""](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/Images/1.streamlit_initialization.JPG)

#### Ganache Demo Blockchain
![alt=""](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/Images/2.ganache_initialization.JPG)

### Final Result & Evaluation
* After launching in `streamlit` platform, we were able to see our balance and all of the available professionals to be hired. We selected one professional and hired him for 10 hour and send him appropriate Ether to hire him. It generated a transaction hash after succesful transaction. We were able to verify the transaction in the `ganache` blockchain.
* We selected another professionals and hired her as well for 20 hours just to verify that our main wallet balance is updating according to the available balance. We also were able to verify this transaction in the `ganache` blockchain as well

![alt=""](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/Images/3.tx_hash.JPG)

![alt=""](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/Images/4.ganache_balance_final.JPG)

* We were also able to see also mining block where each of the transaction took place

![alt=""](https://github.com/Ashfaque-Rahman/blockchain_wallet/blob/main/Images/5.mining_block.JPG)
