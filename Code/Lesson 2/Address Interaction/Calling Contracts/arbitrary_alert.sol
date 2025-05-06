
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    // Function to relay calldata to the Hero contract
    function relay(address hero, bytes calldata data) external {
        (bool success, ) = hero.call(data); // Pass the calldata to the Hero
        require(success, "Relay failed!"); // Ensure the call was successful
    }
}
