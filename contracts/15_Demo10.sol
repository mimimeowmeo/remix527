//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo10 {
    int256[] public myArray;

    constructor() {
        myArray.push(100);
    }

    function addSomethin() public {
        myArray.push(200);
        myArray.push(300);

        modifyArray(myArray);
        // int256[] memory myArray2 = myArray;
        // myArray2[0] = 555;
    }

    function modifyArray(int256[] storage array) private {
        array[0] = 5;
    }
}
