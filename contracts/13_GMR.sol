// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract GMR {
    address public manager;
    address payable[] public players;

    constructor() public {
        manager = msg.sender;
    }

    modifier restricted() {
        require(msg.sender == manager, "Not manager");
        _;
    }

    function enterGame() public payable {
        require(msg.value > 0.01 ether);
        players.push(msg.sender);
    }

    function chooseByTime() private view returns (uint256) {
        uint256 result = block.timestamp % players.length;
        return result;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function payMoneyToPlayer() public restricted {
        uint256 winnerId = chooseByTime();
        players[winnerId].transfer(address(this).balance);
        players = new address payable[](0);
    }

    function getCurrsntPlayers()
        public
        view
        returns (address payable[] memory)
    {
        return players;
    }
}
