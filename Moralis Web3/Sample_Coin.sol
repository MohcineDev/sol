// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Coin{
    // identity in blockchain
    address public minter;
    //get the value of a key
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor(){
        minter = msg.sender; // returns the address of the wallet that call the contract
    }

    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);

        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public{
        require(amount <= balances[msg.sender], "insufficient balance");
        balances[msg.sender] -= amount;
        balances[receiver]+= amount;

        emit Sent(msg.sender, receiver, amount);
        /// emit keyword used to call events
    }
}