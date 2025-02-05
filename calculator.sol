// SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity ^0.8.18;

contract Calculator {
    uint256 result = 0;

    function add(uint256 input) public {
        result += input;
    }

    function subtract(uint256 input) public {
        result-= input;
    }

    function multiply(uint256 input) public {
        result *= input;
    }

    function sum() public view returns (uint256) {
        return result;
    }
}