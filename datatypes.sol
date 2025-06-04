// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataTypes {
    uint256 public u = 100; // Unsigned integer
    int256 public i = -100; // Signed integer
    bool public isActive = true; // Boolean
    address public owner = msg.sender; // Wallet address of who deployed
    string public name = "Alice"; // String data
    bytes1 public b1 = 0x65; // Byte data (1 byte)
}
