// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PublicInstitutionTransaction {
    mapping(address => uint) public balances;
    address public institution;
    
    // Constructor to deploy the contract and set the institution
    constructor() {
        institution = msg.sender; // Institution deploys the contract
    }
    
    // Modifier to ensure only the institution can perform actions
    modifier onlyInstitution() {
        require(msg.sender == institution, "Only the institution can perform this action");
        _;
    }
    
    // Deposit function where the institution can add funds to a user's balance
    function deposit(address user, uint amount) public onlyInstitution {
        balances[user] += amount;  // Add the specified amount to the user's balance
    }
    
    // Withdraw function that allows users to withdraw their funds, mimicking an "authorized transaction" from an individual
    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient funds");
        balances[msg.sender] -= amount;  // Subtract the amount from the user's balance
        payable(msg.sender).transfer(amount);  // Transfer funds to the user's address
    }
    
    // Function to simulate a "transaction" being signed and verified by the institution
    function createTransaction(address user, uint amount, bytes memory signature) public onlyInstitution {
        // This function would include logic to verify that the transaction is valid
        // For simplicity, we'll assume the transaction is valid and proceed
        
        // Record or execute the transaction (in a real-world case, we might validate the signature here)
        balances[user] += amount;  // Add amount to the user's balance (like a government deposit)
        
        // Emit an event to notify that a transaction occurred
        emit TransactionExecuted(user, amount);
    }
    
    // Function to receive ether
    receive() external payable {}

    // Event to notify transaction completion
    event TransactionExecuted(address indexed user, uint amount);
}
