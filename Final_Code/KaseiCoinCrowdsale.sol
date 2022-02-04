pragma solidity ^0.5.5;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


// Have the KaseiCoinCrowdsale contract inherit the following OpenZeppelin:
// * Crowdsale
// * MintedCrowdsale
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    
    // Provide parameters for all of the features of your crowdsale, such as the `rate`, `wallet` for fundraising, and `token`.
    constructor(
        uint rate,
        address payable wallet,
        KaseiCoin token
    ) Crowdsale(rate, wallet, token) public {
        
    }
}

contract KaseiCoinCrowdsaleDeployer {
    
    address public kasei_token_address;
    address public kasei_crowdsale_address;

    constructor(
       string memory name,
       string memory symbol,
       address payable wallet
    ) public {
        // Creating a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 18);

        // Aassiging the `KaseiCoinToken` contract’s address to the `kasei_token_address` variable.          
        kasei_token_address = address(token);

        // Creating a new instance of the `KaseiCoinCrowdsale` contract
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token);
            
        // Aassiging the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
        kasei_crowdsale_address = address(kasei_crowdsale);

        // Setting the `KaseiCoinCrowdsale` contract as a minter
        token.addMinter(kasei_crowdsale_address);
                
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}
