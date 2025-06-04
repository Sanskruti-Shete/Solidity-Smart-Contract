// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Functions {
    uint256 public x = 5;

    function getX() public view returns (uint256) {
        return x; // view: reads state, doesn’t modify
    }

    function square(uint256 num) public pure returns (uint256) {
        return num * num; // pure: uses only local d
    }

    function pay() public payable {
        // payable: allows receiving ether
    }

    function checkBalance() public view returns (uint256) {
        return address(this).balance; // balance of contract
    }
}
