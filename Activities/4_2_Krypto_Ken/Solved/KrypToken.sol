pragma solidity ^0.5.0;

contract KrypToken {
    // define the address of the owner
    address payable owner = msg.sender;

    // define the symbol of the token
    string public symbol = "KRYP";

    // define the exchange rate
    uint256 public exchange_rate = 10**17;
}
