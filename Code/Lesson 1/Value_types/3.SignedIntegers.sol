// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    // Public storage integers
    int8 public a = 50;  // Positive value
    int8 public b = -20; // Negative value
    int16 public difference;

    // Constructor to calculate the absolute difference
    constructor() {
        difference = abs(a - b);
    }

    // Function to calculate absolute value
    function abs(int16 x) private pure returns (int16) {
        return x < 0 ? -x : x;
    }
}