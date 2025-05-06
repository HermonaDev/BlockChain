Key Concepts:
Access control is crucial in smart contracts to ensure that only authorized users can perform sensitive actions.

In an escrow contract, only the arbiter should be allowed to approve the release of funds.

Unauthorized calls to sensitive functions must be reverted to protect funds and enforce trust.

Properties:
Role-based restriction: Only the pre-defined arbiter can call the approve function.

Reversion on unauthorized access: If anyone else attempts to call it, the contract will revert the transaction.

Security through require statement: Solidity's require() function is used to enforce this access rule.

Use Cases:
Escrow approval: Arbiter approves payment only when conditions are met.

Administrative actions: Limiting function calls to the owner, admin, or specific roles.

Decentralized governance: Ensuring only authorized addresses execute proposals.

Solidity Basics:
Use require(msg.sender == arbiter, "Not authorized"); inside the approve() function to lock it down.

If the caller is not the arbiter, the transaction fails and no Ether is transferred.

This pattern is a foundation for implementing secure smart contracts.
