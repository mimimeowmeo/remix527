//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;
contract Chat {
    string public message;
    int public a;

    constructor(string memory initialMessage) {
        message = initialMessage;
    }

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
