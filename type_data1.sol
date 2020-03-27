pragma solidity ^0.6.1;

contract Types{
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    addr.balance; // возращает баланс в WEI

    addr.transfer(unit xxx);
    addr.send(unit xxx);

    address payable public addr2; // только сюда можно отправить эфир и на простой(без payable) нельзя

    string public str = "Something string"; // хранит символы UTF-8 (обычную строку), например цифры с дробной частью

    function changeStr(string _str) public{
        str = _str;
    }

    bytes1 = byte; // хранить кэши, байт-код контракта и тд.
    
    uint[] arrayUint; // массив данных
    push() // добавить элемент в массив
    .lenth // длинна массива
    new // для создание нового массива

    function addToMas(uint _elem) public{
        arrayUint.push(_elem);
    }

    function getLength() public view returns(uint){
        return arrayUint.length;
    }

    function createAndGetMass(uint _elem1, uint _elem2, uint _elem3) public pure returns(uint[]){
        uint[] memory newMass = new uint[](3);
        newMass[0] = _elem1;
        newMass[1] = _elem2;
        newMass[2] = _elem3;
        return newMass;
    }

    mapping (uint => string) public myMap;

    function addToMap(uint _key, string _value) public{
        myMap[_key] = _value;
    }

    struct Person{ // структура данных
        string name;
        string lastName;
        uint age;
    }
    Person[] public persons;

    function addPerson (string _name, string _lastName, uint _age) public{
        persons.push(Person({name: _name, lastName: _lastName, age: _age}));

    }
}
