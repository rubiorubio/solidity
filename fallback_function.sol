pragma solidity ^0.6.1;

contract lesson6{
    address public owner;
    uint public age;
    constructor (uint _age) public{
       owner = msg.sender;
       age = _age;
    }

    function () public payable{ // anonym function and procced, when on smart contract send ether.
        uint value = msg.value/2;
        owner.transfer(value);
    }

}
