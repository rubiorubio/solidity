pragma solidity ^0.6.1;

contract lesson7{

    // to proccess errors

    require(condition); // inside sm.c. - this operator chek if we have require condition in our sm.c. and if false - get back gas to user
    assert(msg.value > 0); //inside sm.c. like operator "if" = false = stop smart contract - gas.
    revert(); // stop sm.c. where we wrote it. 

    // modificators

    modifier name(){
        require(condition);// проверка на что-либо
        _;// Сначала проверка потом выполнение кода
    }

}
