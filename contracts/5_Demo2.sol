//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.7.4;

contract Demo2 {
    function getResult(uint256 pa, uint256 pb)
        public
        pure
        returns (string memory)
    {
        uint256 a = pa;
        uint256 b = pb;
        uint256 result = a + b;
        return integerToString(result);
    }

    function integerToString(uint256 i) internal pure returns (string memory) {
        if (i == 0) {
            return "0";
        }
        // calculate now many digits?

        uint256 j = i;
        uint256 len;
        while (j != 0) {
            j /= 10;
            len++;
        }

        bytes memory bstr = new bytes(len);
        uint256 k = len - 1;

        while (i != 0) {
            bstr[k--] = bytes1(uint8(48 + (i % 10)));
            i /= 10;
        }
        return string(bstr);
    }
}
