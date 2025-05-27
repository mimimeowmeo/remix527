//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo4 {
    enum StarbucksSize {
        SHORT,
        TALL,
        GRANDE,
        VENTI,
        TRENTA
    }
    StarbucksSize public size;
    StarbucksSize constant defaultSize = StarbucksSize.TALL;

    function setVenti() public {
        size = StarbucksSize.VENTI;
    }

    function setSize(StarbucksSize pSize) public {
        size = pSize;
    }

    function getCurrentSize() public view returns (StarbucksSize) {
        return size;
    }

    function getCurrentSize2() public view returns (uint8) {
        return uint8(size);
    }

    function getCurrentSize3() public view returns (uint16) {
        return uint16(size);
    }

    function getDefaultSize() public pure returns (uint256) {
        return uint256(defaultSize);
    }
}
