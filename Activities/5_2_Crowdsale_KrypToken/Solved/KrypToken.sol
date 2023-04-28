pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

contract KrypToken is ERC20, ERC20Detailed, ERC20Mintable {
    // Create the constructor for KrypToken to accept name, symbol and initial_supply
    constructor(
        string memory name,
        string memory symbol,
        uint256 initial_supply
    )
    public
    // Call ERC20Detailed constructor with name, symbol and decimals
    ERC20Detailed(name, symbol, 18)
    {
        // Call the mint function to mint initial_supply of KRYP in the constructor.
        mint(msg.sender, initial_supply);
    }
}
