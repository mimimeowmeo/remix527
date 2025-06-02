// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract CAC {
    address public manager;
    uint256 public minimumFund;
    address[] approvers;

    constructor(uint256 minimum) public {
        minimumFund = minimum;
        manager = msg.sender;
    }

    function join() public payable {
        require(msg.value > minimumFund, "Insufficient funds to join");
        approvers.push(msg.sender);
    }
}
