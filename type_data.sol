pragma solidity ^0.6.1;

contract Boolean{
    bool b; // false default
    !false; // true
    !true; // false

    false && true; // false
    true && true; // true

    ||
    
    true || false; // true

    false == true; // false
    false == false; // true

    !=

    false != true; // true
    false != false; // false
}

contract Integer{ // любое целое число
    int i; // -128 до 127, с учётом нуля
    int8 //какой максимум числа вместится в эту storage 
}

contract unsignedInteger{ // положительное целое число
    uint8 i; // 255 максимум, с учётом нуля
    uint16
    uint24
    uint32
    ///
    uint256
}
