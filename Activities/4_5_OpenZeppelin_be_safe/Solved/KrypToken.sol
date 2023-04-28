pragma solidity ^0.5.0;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/math/SafeMath.sol";

contract KrypToken {
    // use SafeMath
    using SafeMath for uint256;

    address payable owner = msg.sender;
    string public symbol = "KRYP";
    uint256 public exchange_rate = 10**17;

    mapping(address => uint256) balances;

    function balance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function transfer(address recipient, uint256 amount) public {
        balances[msg.sender] = balances[msg.sender].sub(amount); // use sub
        balances[recipient] = balances[recipient].add(amount); // use add
    }

    function purchase() public payable {
        uint256 amount = msg.value.div(exchange_rate); // use div
        balances[msg.sender] = balances[msg.sender].add(amount); // use add
        owner.transfer(msg.value);
    }

    function mint(address recipient, uint256 value) public {
        require(
            msg.sender == owner,
            "You are not SUPERMAN!! You do not have permission to mint tokens!"
        );
        balances[recipient] = balances[recipient].add(value); // use add
    }
}
