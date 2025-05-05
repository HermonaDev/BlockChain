Function Basics
Visibility (Who Can Call It?)
    - private: Only callable inside this contract
    - internal: Callable inside this contract + child contracts
    - public: Callable anywhere (inside/outside contract)
    - external: Callable only from outside the contract

Rule: Never use two visibility keywords together!

State Mutability (What Can It Do?)
    - pure: Cannot read or write storage (math only)
    - view: Can read storage but not write
    - payable: Can receive Ether (money) with the call
    - (Default): Can read and write storage

Examples
solidity
contract Example {
    // Private + Pure (math helper)
    function add(uint a, uint b) private pure returns (uint) {
        return a + b;
    }

    // Internal + View (read-only)
    function getBalance() internal view returns (uint) {
        return address(this).balance;
    }

    // Public + Payable (accepts money)
    function deposit() public payable {
        // Stores sent Ether
    }

    // External (API-like)
    function withdraw() external {
        // Can only be called from outside
    }
}

Key Tips
* Start with public unless you need restrictions
* Use view/pure to save gas when possible
* payable is needed for any function receiving Ether