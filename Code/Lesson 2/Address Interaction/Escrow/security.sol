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

    // External function to move the contract's balance to the beneficiary
    function approve() external {
        require(msg.sender == arbiter, "Only the arbiter can approve the transfer."); // Ensure only the arbiter can call this function
        require(address(this).balance > 0, "No funds available for transfer."); // Ensure there are funds to transfer

        (bool success, ) = beneficiary.call{value: address(this).balance}(""); // Transfer all funds to the beneficiary
        require(success, "Transfer to beneficiary failed."); // Ensure the transfer is successful
    }
}
