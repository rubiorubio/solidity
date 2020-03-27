pragma solidity ^0.6.1;

contract MyFirstToken{
    string public constant name    = "MyFirstToken";
    string public constant symbol  = "MFT";
    uint8 public constant decimals = 2;

    uint public totalSupply; //переменная храниет всё колличесвто токенов

    mapping(address => uint) balances; // массивв всех баллансов (адрес и колл.токенов)

    mapping(address => mapping(address => uint)) allowed; //разрешение на снятие указанной суммы денег (двухмерный)

    event Transfer(address indexed _from, address indexed _to, uint _value);
    event Approval(address indexed _from, address indexed _to, uint _value);

    function mint(address _to,uint _value) public {
        require(totalSupply + _value >= totalSupply && balances[_to]+_value >= balances[_to]);// проверка на переполнение
        balances[_to] += _value; // добавляем к адресу указываемое значение
        totalSupply += _value; // увеличиваем также общий балланс всех токенов
    }

    function balanceOf(address _owner) public returns(uint) { // чекнуть баланс указаннового адреса
        return balances[_owner];
    }

    function allowance(address _owner, address _spender) public view returns(uint){
        return allowed[_owner][_spender];
    }

    function transfer(address _to,uint _value) public {
        require(balances[msg.sender] >= _value && balances[_to] + _value >= balances[_to]);
        balances[msg.sender] -= _value;
        balances[_to] +=_value;
        emit Transfer(msg.sender, _to, _value);
    }

    function transferFrom(address _from, address _to, uint _value) public{
        require(balances[_from] >= _value && balances[_to] + _value >= balances[_to] && allowed [_from][msg.sender] >= _value);
        balances[_from] -= _value;
        balances[_to] +=_value;
        allowed[_from][msg.sender] -= _value;
        emit Transfer(_from, _to, _value);
    }

    function approve(address _spender, uint _value) public { // создаёт разрешение на снятие
        allowed[msg.sender][_spender] = _value;// адрес отправителя и аргумент
        emit Approval(msg.sender, _spender, _value);
    }

}
