Key Concepts:
A fallback function is triggered when a contract receives data that doesn’t match any of its defined function signatures (the first 4 bytes of calldata).

It's useful for handling unexpected or random function calls.

The fallback function can accept any data, but it’s usually used to handle unrecognized calls or ether transfers.

Properties:
Triggering condition: If calldata doesn't match any function signature or is malformed (too short or long).

One fallback per contract: A contract can only have one fallback function.

Gas-efficient: The fallback function doesn’t need to have any specific logic or return a value.

Use cases: Handle calls to non-existent functions, receive ether, or log unexpected transactions.

Use Cases:
Error handling: Catching unexpected calls and preventing failed transactions.

Receiving ether: A fallback can receive ether and prevent it from being lost if sent accidentally.

Proxy contracts: To handle dynamic function dispatch.

Unrecognized calls: When interacting with other contracts that might send random calls.

Solidity Basics:
A fallback function is written as:

It can handle all unrecognized calls (even if no data is sent).

The function doesn’t take parameters, and it doesn't return anything
