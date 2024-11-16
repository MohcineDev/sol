// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyEvents{

    event CreatedNFT(address indexed user, int  id, int dna);

    function createNFT(int _id, int _dna) public{
        emit CreatedNFT(msg.sender,_id, _dna);
    }   
    //when you call an event, it causes the arguments to be stored in the transaction's log
}