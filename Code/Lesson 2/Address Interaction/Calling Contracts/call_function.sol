// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Define the IHero interface
interface IHero {
    function alert() external; // Function to trigger the hero's alert
}

// Implement the Sidekick contract
contract Sidekick {
    // Function to send an alert to the hero
    function sendAlert(address heroAddress) public {
        IHero hero = IHero(heroAddress); // Properly cast heroAddress to IHero interface
        hero.alert(); // Call the alert function on the hero
    }
}
