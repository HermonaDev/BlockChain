// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Escrow {
    // State variables to store the addresses
    address public depositor;
    address public beneficiary;
    address public arbiter;

    // Payable constructor to initialize the addresses and accept Ether
    constructor(address _arbiter, address _beneficiary) payable {
        depositor = msg.sender; // The deployer is stored as the depositor
        arbiter = _arbiter; // Store the arbiter address
        beneficiary = _beneficiary; // Store the beneficiary address
    }
}
