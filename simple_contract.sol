pragma solidity ^0.6.1;

contract Ownable{
    address public owner;

    modifier onlyOwner() public {
        require(owner==msg.sender);
        _;
    }
    function Ownable () {
        owner = msg.sender;
    }
    function transferOwnership(address _newOwner) public onlyowner{
        owner = _newOwner;
    }
}

/**
The simpleContract does this and that...
 */
contract simpleContract is Ownable{
    // address public owner;
    uint public a;

    function setA(uint _a) onlyOwner public{
        a = _a;
    }
}
