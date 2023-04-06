pragma solidity ^0.5.0;

contract KrypToken {
    address payable owner = msg.sender;
    string public symbol = "KRYP";
    uint256 public exchange_rate = 10**17;

    mapping(address => uint256) balances;

    function balance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function transfer(address recipient, uint256 amount) public {
        balances[recipient] += amount;
        balances[msg.sender] -= amount;
    }

    function purchase() public payable {
        uint256 amount = msg.value / exchange_rate;
        balances[msg.sender] += amount;
        owner.transfer(msg.value);
    }

    // Add a mint function to mint coins to a recipient
}
