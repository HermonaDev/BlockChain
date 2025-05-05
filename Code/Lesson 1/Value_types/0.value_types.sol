//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/conole.sol";

contract Example{
    unint8 a = 255;
    unint256 b = 22;

    int8 c = 127;
    int256 d = -55;

    bool myCondition = true; 

    enum Choice{
        Up,
        Down,
        Left,
        Right
    }

    Choice choice = Choice.Down;
}
