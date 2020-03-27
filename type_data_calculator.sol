pragma solidity ^0.6.1;

contract IntegerAndUnsignedInteger{
    int256 public a = -45;
    uint8 public b  = 150;

    // сложение
    function plus(int256 x) public view returns(int256){
        return a + x;
    }
    function plus_u(uint8 x) public view returns(uint8){
        return b + x;
    }
    // вычитание
    function minus(int256 x) public view returns(int256){
        return a - x;
    }
    function minus_u(uint8 x) public view returns(uint8){
        return b - x;
    }
    // умножение
    function mul(int256 x) public view returns(int256){
        return a * x;
    }
    function mul_u(uint8 x) public view returns(uint8){
        return b * x;
    }
    // деление
    function dev(int256 x) public view returns(int256){
        return a / x;
    }
    function dev_u(uint8 x) public view returns(uint8){
        return b / x;
    }
    // остаток от деление
    function mod(int256 x) public view returns(int256){
        return a % x;
    }
    function mod_u(uint8 x) public view returns(uint8){
        return b % x;
    }
    // возведение в степень
    function degree_u(uint256 x) public view returns(int256){
        return b ** x;
    }
    // изменения значения переменных
    function setA(int256 _a) public {
        a = _a;
    }
    function setB(uint8 _b) public{
        b = _b;
    }
}

pragma solidity ^0.6.1;

import "./math.sol";

contract Calculator {
    using SafeMath for uint;
  // Result of the operation are always stored in this variable
  uint result;


  // returns the result
  function getResult() public view returns (uint) {
    return result;
  }

  // result = result + num
  function addToNumber(uint num, uint num1) public {
    result = num.add(num1);
  }

  // result = result - num
  function substractNumber(uint num, uint num1) public {
    result = num-num1;
  }

  // result = result * num
  function multiplyWithNumber(uint num, uint num1) public {
    result = num*num1;
  }

  // result = result / num
  function divideByNumber(uint num, uint num1) public {
    result = num/num1;
  }

}

// pragma solidity ^0.6.1;

// import "./math.sol";

// contract Calculator {
//     using SafeMath for uint;
//   // Result of the operation are always stored in this variable
//   uint result;


// //   returns the result
//   function getResult() public view returns (uint) {
//     return result;
//   }

//   // result = result + num
//   function addToNumber(uint num, uint num1) public{
//     result = num.add(num1);
//   }

//   // result = result - num
//   function substractNumber(uint num, uint num1) public {
//     result = num.sub(num1);
//   }

//   // result = result * num
//   function multiplyWithNumber(uint num, uint num1) public {
//     result = num.mul(num1);
//   }

//   // result = result / num
//   function divideByNumber(uint num, uint num1) public {
//     result = num.div(num1);
//   }

// }
