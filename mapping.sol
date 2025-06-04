// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyMap {
    mapping(address => uint256) public balances;

    function setBalance(uint256 amt) public {
        balances[msg.sender] = amt; // stores amount for sender
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user]; // lookup by address
    }
}
