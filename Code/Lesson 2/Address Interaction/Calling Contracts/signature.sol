
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero) external {
        // Fill in the function signature for the Hero's alert function
        bytes4 signature = bytes4(keccak256("alert()"));

        (bool success, ) = hero.call(abi.encodePacked(signature)); // Call the hero's alert function
        require(success, "Alert failed!"); // Ensure the call was successful
    }
}
