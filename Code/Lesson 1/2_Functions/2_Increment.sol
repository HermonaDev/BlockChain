// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    // External function to increment the value of x
    function increment() external {
        x += 1;
    }
}