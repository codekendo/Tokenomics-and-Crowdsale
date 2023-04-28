pragma solidity ^0.5.0;

import "./KrypToken.sol";
import "./KrypTokenCrowdsale.sol";


contract KrypTokenCrowdsaleDeployer {
    address public kryp_token_address;
    address public kryp_crowdsale_address;

    // create the constructor which accepts name, symbol and wallet address
    constructor(
        string memory name,
        string memory symbol,
        address payable wallet
    ) public {

        // create a KrypToken object
        KrypToken token = new KrypToken(name, symbol, 0);

        // store the KrypToken object's address into kryp_token_address
        kryp_token_address = address(token);

        // create a KrypTokenCrowdsale object
        KrypTokenCrowdsale kryp_crowdsale = new KrypTokenCrowdsale(
            1,
            wallet,
            token
        );

        // store the KrypTokenCrowdsale object's address in kryp_crowdsale_address
        kryp_crowdsale_address = address(kryp_crowdsale);

        // add the kryp_crowdsale_address as a minter
        token.addMinter(kryp_crowdsale_address);

        // renounce KrypToken as minter
        token.renounceMinter();
    }
}
