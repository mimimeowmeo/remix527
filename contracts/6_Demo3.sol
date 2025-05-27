//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo3 {
    function arrayTest1(uint8 len) public pure returns (uint256) {
        uint256[] memory a = new uint256[](len);
        return a.length;
    }

    function arrayTest2(uint8 len) public pure returns (uint256) {
        bytes memory a = new bytes(len);
        return a.length;
    }

    function arrayTest3(uint8 idx) public pure returns (uint256) {
        uint8 len = 7;
        uint256[] memory a = new uint256[](len);
        a[0] = 5;
        a[1] = 10;
        a[2] = 11;
        a[3] = 12;
        a[4] = 103;
        a[5] = 14;
        a[6] = 155;
        return a[idx];
    }

    function arrayTest4(uint8 len) public pure returns (uint256[] memory) {
        uint256[] memory a = new uint256[](len);
        a[0] = 5;
        a[1] = 10;
        a[2] = 11;
        a[3] = 12;
        a[4] = 103;
        a[5] = 14;
        a[6] = 155;
        return a;
    }
}
