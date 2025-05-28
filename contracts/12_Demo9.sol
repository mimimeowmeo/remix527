//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
// pragma experimental ABIEncoderV2;
pragma abicoder v2;

contract Demo9 {
    string[] public myArray;

    constructor() {
        myArray.push("Hi");
        myArray.push("Hello World");
        myArray.push("Welcome");
    }

    function getStringArray() public view returns (string[] memory) {
        return myArray;
    }
}
