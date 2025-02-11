// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract SimpleRequire {
    uint256 public threshold = 100;

    function checkValue(uint256 value) public view returns (string memory) {
        require(value >= threshold, "Value is below the threshold");
        return "Value is acceptable";
    }
}
