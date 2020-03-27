pragma solidity ^0.6.1;
/**
For any operation, any fuction any change in blockchain - you pay gas!
to spend less gas  - optimaze you SmartContract!
 */
contract lesson7{
    string constant public str = "hi"; // you memory only you need to use, no over use.
    event SomeEvent(string, address); // to save info but cheaper than massiv
// If you only need to see info fom blockchain and not change it - do not pay for it!
    function viewFunc() view public returns(string) { // function to read 
        return str;
    }
    function pureFunc() pure public returns(uint) { // not read but some local logic
        return 5 + 7;
    }
}
