// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafetyContract {
    address public owner;

    constructo
    
    
    function inputValidation(uint256 x) public pure returns (uint256) {
        require(x != 0, "Input must not be zero");
        return x;
    }
