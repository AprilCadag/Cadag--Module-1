// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SafetyContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function inputValidation(uint256 x) public pure returns (uint256) {
        require(x != 0, "Input must not be zero");
        return x;
    }

    function validateOrder(uint256 a, uint256 b) public pure returns (uint256) {
        assert(a < b);
        return a;
    }

    function restrictedOperation() public view {
        require(msg.sender == owner, "Only owner can call this function");
        revert("This function reverted");
    }
}
