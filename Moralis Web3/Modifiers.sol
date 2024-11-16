// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Modifiers{
    //modifiers can be used to change the behaviour of a function in adeclarative way
    // identity in blockchain
    address public minter;
    //get the value of a key
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

//only owner
    modifier onlyMinter{
        require(msg.sender == minter, "only the minter can call this function");
        _;
    }

    modifier amountGreaterThan(uint amount){
        require(amount < 1e60);
        _;
    }
    modifier balanceGreaterThanAmount(uint amount){
        require(amount <= balances[msg.sender], "insufficient balance");
        _;
    }
    constructor(){
        minter = msg.sender; // returns the address of the wallet that call the contract
    }

    function mint(address receiver, uint amount) public onlyMinter amountGreaterThan(amount){
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public balanceGreaterThanAmount(amount){
        balances[msg.sender] -= amount;
        balances[receiver]+= amount;

        emit Sent(msg.sender, receiver, amount);
        /// emit keyword used to call events
    }
}