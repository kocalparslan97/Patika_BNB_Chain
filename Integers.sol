// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Integers {
    uint public number;
    int public anotherNumber;

    function setNumber(uint newNumber) public {
        number = newNumber;
    }

    function setAnotherNumber(int newAnotherNumber) public {
        anotherNumber = newAnotherNumber;
    }

    function sum() public view returns(int){
        return anotherNumber + 5;
    }
}