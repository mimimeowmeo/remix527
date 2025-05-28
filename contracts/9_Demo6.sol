//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo6 {
    mapping(address => uint256) public balances;

    constructor(uint256 initBalance) {
        balances[address(this)] = initBalance;
    }

    // Can't return a mapping directly.
    // function getBalances()
    //     public
    //     view
    //     returns (mapping(address => uint256) memory)
    // {}

    function updateSelfAccountBalance(uint256 newBalance) public {
        balances[msg.sender] = newBalance;
    }

    function getSelfAccountBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function getContractBalance() public view returns (uint256) {
        return balances[address(this)];
    }
}
