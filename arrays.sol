// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyArray {
    uint256[] public numbers; // dynamic array

    function add(uint256 num) public {
        numbers.push(num); // adds to array
    }

    function getAt(uint256 index) public view returns (uint256) {
        return numbers[index]; // get element at index
    }

    function getLength() public view returns (uint256) {
        return numbers.length;
    }
}
