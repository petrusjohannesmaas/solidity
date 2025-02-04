// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Astronauts {
    string[3] public countries = ["USA", "China", "India"];
    string[] public astronauts;

    function allCountries() public view returns (string[3] memory) {
        return countries;
    }

    function add(string memory _name) public {
        astronauts.push(_name);
    }

    function all() public view returns (string[] memory, string[3] memory) {
        return (astronauts, countries);
    }

    // Get a count of all the astronauts
    function count() public view returns (uint) {
        return astronauts.length;
    }

    // Retrieve an astronaut by its index
    function get(uint i) public view returns (string memory) {
        return astronauts[i];
    }
}


