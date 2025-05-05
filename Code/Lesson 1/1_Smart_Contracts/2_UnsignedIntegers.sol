// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Public storage variables
    uint8 public a = 42; 
    uint16 public b = 300; 
    uint256 public sum;

    // Constructor to initialize the sum
    constructor() {
        sum = a + b;
    }
}