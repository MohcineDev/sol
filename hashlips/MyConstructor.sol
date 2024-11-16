// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyConstructor{

    ///called on the deploy of the smart contract
    string public name;

    // constructor(){
    //     name = "MohcineDev";
    // }
    constructor(string memory _name){
        name = _name;
    }

}

contract mySecondContract is MyConstructor{ // inheritance
    constructor(string memory _name) MyConstructor(_name){
    
    }
}