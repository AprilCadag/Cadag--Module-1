# Cadag--Module-1
This Solidity program serves as a basic example to introduce beginners to Solidity syntax and common patterns. It illustrates the usage of state variables, constructor, functions, and error handling mechanisms. 

## Description
This Solidity contract demonstrates essential concepts such as state variables, constructors, function modifiers (pure and view), error handling (require() and assert()), and access control based on the caller's identity. It serves as a foundational example for developers learning Solidity and provides insights into building secure and reliable smart contracts on the Ethereum blockchain.

## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., module1.sol). Copy and paste the following code into the file:\

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

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile module1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "module1" contract from the dropdown menu, and then click on the "Deploy" button.

## Auuthor
April Cadag

## License
This project is licensed under the MIT License - see the LICENSE.md file for details
