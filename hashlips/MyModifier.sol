// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyModifier{
    uint64 public myNum = 0;
    bool public paused = false;
    address public owner; /// the owner who deployed the contract

    constructor(){
        owner =address(msg.sender);  ///global variable
    }
    modifier isNotPaused(){
        /// require paused = false to  run
        require(paused == false, "contract is paused");
        _; ///the rest of the code to execute
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not the owner");
        _;///Modifier body : change the address in the account dropdown to test the modifier
    }
    function addToNum() public isNotPaused{
        myNum++;
    }
    function subtractNum() public onlyOwner{ /// require the owner to work
        myNum--;
    }
    function setPaused() public{
        paused = true;
    }

}

//modifier : can be used ti change the behaviour of functions in a declarative way.
//ex: you can use a modifier to automatically check a condition prios to executing the function.