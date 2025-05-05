// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    uint public x;

    constructor(uint _x) {
        x = _x;
    }

    function increment() external {
        x += 1;
    }

    // External view function to return the sum of the state variable x and a parameter
    function add(uint _y) external view returns (uint) {
        return x + _y;
    }
}