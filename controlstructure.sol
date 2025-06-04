// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Control {
    function checkEven(uint256 num) public pure returns (bool) {
        if (num % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function sumTill(uint256 limit) public pure returns (uint256 sum) {
        for (uint256 i = 1; i <= limit; i++) {
            sum += i;
        }
    }

    function countDown(uint256 n) public pure returns (uint256 count) {
        while (n > 0) {
            count++;
            n--;
        }
    }
}
