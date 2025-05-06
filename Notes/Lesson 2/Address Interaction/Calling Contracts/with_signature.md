Key Concepts:
abi.encodeWithSignature is a Solidity utility that helps manually construct calldata.

It combines function name, parameter types, and arguments into a complete calldata payload.

It's a shortcut to manually hashing the function signature and appending encoded arguments.

Properties:
Accepts the full function signature as a string, including parameter types.

Returns a dynamically-sized bytes array representing the full calldata.

Automatically handles hashing the signature and encoding arguments in the correct ABI format.

Only accepts fully qualified types (e.g., use uint256, not uint).

Use Cases:
Manually invoking functions via low-level .call().

Creating generic contract calls in proxy or upgradeable contract patterns.

Dynamically interacting with contracts when interfaces or types are unknown at compile time.

Sending function calls across contracts without needing to define an interface.

Solidity Basics:
Basic usage:
abi.encodeWithSignature("functionName(type1,type2,...)", arg1, arg2, ...)

Example (no arguments):
abi.encodeWithSignature("rumble()")

Example (with arguments):
abi.encodeWithSignature("alert(uint256,bool)", 3, true)

Returns full calldata, which can be sent via:
(bool success, ) = contractAddress.call(payload);
