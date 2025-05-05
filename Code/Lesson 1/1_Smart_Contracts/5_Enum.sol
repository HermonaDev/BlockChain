// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	// Enum to define food types
    enum Foods { Doro, Injera, Kitfo, Tibs }

	// Public variables to store enum values
	Foods public food1 = Foods.Doro;   // My first favorite
    Foods public food2 = Foods.Injera;   
    Foods public food3 = Foods.Kitfo;    
    Foods public food4 = Foods.Tibs;      
}