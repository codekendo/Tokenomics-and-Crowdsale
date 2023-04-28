pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";

contract KrypToken is ERC20, ERC20Detailed {
    address payable owner;

    // Add KrypToken constructor and initialize the ERC20Detailed constructor
    constructor(uint256 initial_supply)
    public
    ERC20Detailed("KrypToken", "KRYP", 18)
    {
        owner = msg.sender;
        _mint(owner, initial_supply);
    }

    // Add onlyOwner modifier
    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "You are not SUPERMAN!! You don't have permission to mint these tokens"
        );
        _;
    }

    // Add mint function
    function mint(address recipient, uint256 amount) public onlyOwner {
        _mint(recipient, amount);
    }
}
