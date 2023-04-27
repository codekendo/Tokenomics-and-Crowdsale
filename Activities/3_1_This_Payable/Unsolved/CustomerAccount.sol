pragma solidity ^0.5.0;

contract CustomerAccount {
    address owner;
    bool isNewAccount;
    uint256 accountBalance;
    string customerFirstName;
    string customerLastName;

    function getInfo()
        public
        view
        returns (
            address,
            bool,
            uint256,
            string memory,
            string memory
        )
    {
        return (
            owner,
            isNewAccount,
            accountBalance,
            customerFirstName,
            customerLastName
        );
    }

    function setInfo(
        address newOwner,
        bool newAccountStatus,
        uint256 newAccountBalance,
        string memory newCustomerFirstName,
        string memory newCustomerLastName
    ) public {
        owner = newOwner;
        isNewAccount = newAccountStatus;
        accountBalance = newAccountBalance;
        customerFirstName = newCustomerFirstName;
        customerLastName = newCustomerLastName;
    }

    // Add a function sendRemittance which accepts an amount and recipient and transfer amount to the recipient and update the accountBalance.

    // Add a payable function deposit which accepts ether sent to the contract and update the accountBalance.

    // Add a payable fallback function
}
