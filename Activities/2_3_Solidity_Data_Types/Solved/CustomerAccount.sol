pragma solidity ^0.5.0;

// create contract named CustomerAccount address and message
contract CustomerAccount {
    // Add the owner variable: Holds the Ethereum address of the main customer (for example, 0xaaaaaaaaaaaaaaaaa).
    address owner = 0xc3879B456DAA348a16B6524CBC558d2CC984722c;

    // Add the isNewAccount variable: Represents whether the account is new (that is, true or false).
    bool isNewAccount = true;

    // Add the accountBalance variable: Holds the account balance (for example, 10000).
    uint256 accountBalance = 10000;

    // Add the customerFirstName variable: Holds the first name of the customer (for example, "John").
    string customerFirstName = "John";

    // Add the customerLastName variable: Holds the last name of the customer (for example, "Doe").
    string customerLastName = "Doe";
}
