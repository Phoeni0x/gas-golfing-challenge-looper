// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

contract Looper {

    function loop() external pure {
        for (uint256 i = 100; i != 0; ) {
            doStuff(i);
            assembly {
                i := sub(i, 1)
            }
        }
    }

    function doStuff(uint256 i) private pure returns (uint256) {
        return i;
    }
}
