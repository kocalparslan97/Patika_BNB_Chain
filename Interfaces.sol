// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// Contract A
contract ContractA {
    uint public someValue;
    function setValue(uint newValue) external {
        someValue = newValue;
    }
}

interface ContractAInterface {
    //same signiture with contractA's function
    function setValue(uint)external;
}

// Contract B
contract ContractB {
    //call setValue fucntion using address of contractA and Interface
    function setValueonContractA(address _contractA, uint newValue) public {
        ContractAInterface(_contractA).setValue(newValue);
    }
}