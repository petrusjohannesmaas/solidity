// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;

contract VendingMachine {
    struct Snack {
        string name;
        uint price;
        uint quantity;
    }

    Snack[] public snacks;

    // function addSnack(string memory _name, uint price, uint quantity) public {
    //     snacks.push(Snack(_name, _price, _quantity));
    // }

    function addSnack(string memory name, uint price, uint quantity) public {
        Snack memory newSnack = Snack({
            name: name,
            price: price,
            quantity: quantity
        });

        snacks.push(newSnack);
    }
 
    function getSnacks() public view returns (Snack[] memory) {
        return snacks;
    }
}