Key Concepts:
A function signature is a string that represents a function’s name and its parameter types (e.g., "rumble()").

It is used to identify the exact function being called in a contract.

To form manual calldata, the function signature must be hashed using keccak256.

Properties:
The first 4 bytes of the keccak256 hash of a function signature are called the function selector.

The selector tells the Ethereum Virtual Machine (EVM) which function to invoke.

If a function takes parameters, their types must be included in the signature (e.g., "transfer(address,uint256)").

Use Cases:
Manually crafting calldata for low-level interactions (call, delegatecall).

Interfacing with unknown or dynamic smart contracts.

Debugging and reverse engineering transactions.

Understanding how Solidity compiles high-level function calls into byte-level calldata.

Solidity Basics:
Example: keccak256("rumble()") → 0x7e47cd7e (first 4 bytes = selector).

For a parameterless function like alert(), the function signature is "alert()".

The selector 0x + 8 hex characters becomes the entire calldata if the function takes no parameters.
