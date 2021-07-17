pragma solidity 0.8.1;

contract SharedWallet {
    
    address public owner;
    
    constructor () {
        owner = msg.sender;
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not allowed");
        _;
    }
    
    function withdrawMoney(address payable _to, uint256 _amount) public onlyOwner {
        // require(owner == msg.sender, "you're not allowed");
        _to.transfer(_amount);
    }

    receive() external payable {
        
    }
}
