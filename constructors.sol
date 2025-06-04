// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyConstructor {
    string public name;

    // Constructor: sets the initial value of 'name'
    constructor(string memory _name) {
        name = _name;
    }
}
