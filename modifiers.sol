// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OnlyOwner {
    address public owner;

    // Constructor sets the contract deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier that checks if msg.sender is owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _; // Continue with function execution
    }

    // Function restricted by modifier
    function secureFunction() public onlyOwner {
        // Only the owner can call this
    }
}
