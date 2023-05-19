// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contract A

contract ContractA {
    uint public someValue;
    function setValue(uint newValue) public {
        someValue = newValue;
    }
}

//Contract B
contract ContractB {
    //call setValue function using address of ContractA
    function setValueOnContractA(address _contractA, uint newValue) public {
        _contractA.call(abi.encodeWithSignature("setValue(uint256)", 123));
    }
}