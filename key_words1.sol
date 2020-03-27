pragma solidity ^0.6.1;

contract keyWords{
    uint public oneWei    = 1 wei   ; // 1
    uint public oneSzabo  = 1 szabo ; // 10^12
    uint public oneFinney = 1 finney; // 10^15
    uint public oneEther  = 1 ether ; // 10^18

    // Время

    uint public oneSecond = 1 seconds; // 1
    uint public oneMinute = 1 minutes;
    uint public oneHour   = 1 hours;
    uint public oneDay    = 1 days;
    // И так далее....

    // блок

    bytes32 public blockHash;
    address public miner;        // адресс майнера сманившего последний блок
    uint    public difficulty;   // сложность в юинт последнего блока
    uint    public gasLimit;     // сколько газа
    uint    public time;         // текущее времяя с 1970 01 01 в секундах
    uint    public time2;        // тоже самое что и time

    // транзакций

    bytes   public data;       // add some message/notes in transaction
    uint    public gas;        // the value of gas in this transaction
    address public sender;     // who send
    bytes4  public signature;  // first 4 bytes to indificate a function
    uint    public value;      // value of ether. sended with function on contract

    function Trx() public payable{
    blockHash = block.blockhash(115);
    miner = block.coinbase;
    difficulty = block.difficulty;
    gasLimit = block.gaslimit;
    time = block.timestamp;
    time2 = now;

    data = msg.data;
    gas = msg.gas;
    sender = msg.sender;
    signature = msg.sig;
    value = msg.value;

    }
}


