// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract pro1 {
    uint256 age;

    function setAge(uint256 x) public {
        age = x;
    }

    function getAge() public view returns (uint256) {
        return age;
    }
}
