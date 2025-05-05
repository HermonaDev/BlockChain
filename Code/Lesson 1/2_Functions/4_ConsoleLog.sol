// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Contract {
    function winningNumber(string calldata secretMessage) external returns(uint) {
        console.log("Secret Message:", secretMessage);

        if (keccak256(abi.encodePacked(secretMessage)) == keccak256(abi.encodePacked("return the value 794 to win!"))) {
            return 794;
        }

        return 0;
    }
}