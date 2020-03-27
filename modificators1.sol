pragma solidity ^0.6.1;

contract lesson7{
    address public owner;

    function lesson7() public{
        owner = msg.sender
    }
    function sendHalf(address _addr) onlyEvenNumber public payable{
        uint balanceBeforeTransfer = address(this).balance;
        _addr.transfer(msg.value/2);

        assert(address(this).balance == balanceBeforeTransfer - msg.value/2);
    }

    function senfHalfToOwner() onlyEvenNumber public payable{
        uint balanceBeforeTransfer = address(this).balance;
        owner.transfer(msg.value/2);

        assert(address(this).balance == balanceBeforeTransfer - msg.value/2);
    }

    modifier onlyEvenNumber(){
        require(msg.value%2 ==0);// check if you send even numbers
        _;
    }
}
