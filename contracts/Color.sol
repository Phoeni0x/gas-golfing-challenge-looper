// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.23;

contract Color {
    bytes32 private constant COLOR_POSITION = 0x000000000000000000ffffff0000000000000000000000000000000000000000;

    bytes32 private metadata = 0x0000000000000001018000ffd8da6bf26964af9d7eed9e03e53415d37aa96045;

    function getColor() external view returns (bytes3) {
        bytes32 meta;
        bytes3 hexColor;
        assembly {
            meta := sload(metadata.slot)
            meta := and(meta, COLOR_POSITION)
            meta := shl(72,meta) 
            hexColor := meta
        }
        return hexColor;
    }

}
