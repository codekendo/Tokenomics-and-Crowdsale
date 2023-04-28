pragma solidity ^0.5.0;

contract CustomerAccount {
    address owner;
    bool isNewAccount;
    uint256 accountBalance;
    string customerFirstName;
    string customerLastName;

    // Add the getInfo function which would return the owner, isNewAccount, accountBalance, customerFirstName, customerLastName
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

    // Add the function which can update the owner, isNewAccount, accountBalance, customerFirstName, customerLastName
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
}
