
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    // Function to trigger the fallback function of the Hero contract
    function makeContact(address hero) external {
        (bool success, ) = hero.call("thisDoesNotMatchAnyFunction");
        require(success, "Fallback was not triggered!");
    }
}
