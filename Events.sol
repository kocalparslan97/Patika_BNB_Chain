// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyContract {
    event NewTransaction(uint  indexed transactionId,address indexed sender,
    address indexed recipient, uint amount);

    function transfer(address recipient, uint amount) public {
        //perfom transfer logic
        require(amount >= 400, "The amount is less than expected");
        uint transactionId = 123;
        emit NewTransaction(transactionId, msg.sender, recipient, amount);
    }
}