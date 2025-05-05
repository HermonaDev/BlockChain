// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Contract {
    // Public storage variables
    bytes32 public msg1 = "Hello World"; 
    string public msg2 = "This is a longer string literal that exceeds 32 bytes and requires dynamic storage.";
}