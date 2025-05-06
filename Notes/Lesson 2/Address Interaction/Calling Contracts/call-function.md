Key Concepts:
Interfaces define the structure of external contracts without implementing them.

They enable communication between contracts by specifying function signatures.

Used when one contract needs to call another without accessing its full code.

Properties:
Abstract: Interfaces contain only function declarations—no logic.

External Calls: All functions in an interface must be marked external.

No State or Constructors: Interfaces cannot have state variables or constructors.

Encodes Calldata: Behind the scenes, interfaces help generate the correct calldata for function calls.

Use Cases:
Calling token contracts (e.g., checking balances, transferring tokens).

Interacting with oracles, DAOs, or DeFi protocols.

Modular contract design where components communicate through interfaces.

Delegation and plugin-like contract systems.

Solidity Basics:
Interfaces are declared with the interface keyword.

Contracts use the interface by referencing its name and target address.

Interfaces help ensure compatibility between independently deployed contracts.
