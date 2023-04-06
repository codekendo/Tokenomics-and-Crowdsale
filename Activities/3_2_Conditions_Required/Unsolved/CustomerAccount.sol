pragma solidity ^0.5.0;

contract CustomerAccount {
    address owner;
    bool isNewAccount;
    uint256 accountBalance;
    string customerFirstName;
    string customerLastName;

    // Add the msgSender

    // Add the msgValue

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

    function sendRemittance(uint256 amount, address payable recipient) public {
        recipient.transfer(amount);
        accountBalance = address(this).balance;
    }

    function deposit() public payable {
        accountBalance = address(this).balance;
        // Assign msg.sender to msgSender.

        // Assign msg.value to msgValue.
    }

    function() external payable {}

    function withdraw(uint256 amount, address payable recipient) public {
        require(recipient == owner, "You don’t own this account!");
        return recipient.transfer(amount);
    }
}
