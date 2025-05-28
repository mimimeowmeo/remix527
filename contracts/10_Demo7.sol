//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo7 {
    function getMultiple1() public pure returns (uint256, uint256) {
        uint256 a = 3;
        uint256 b = 5;
        return (a + b, a * b); // tuple
    }

    function getMultiple2() public pure returns (uint256 product, uint256 sum) {
        uint256 a = 3;
        uint256 b = 5;
        return (a + b, a * b); // reuturn tuple with names.
    }

    function getMultiple3() public pure returns (uint256 product, uint256 sum) {
        uint256 a = 3;
        uint256 b = 5;
        product = a + b;
        sum = a * b;
        // Don't need to return anymore, set the value to return variables directly.
    }
}
