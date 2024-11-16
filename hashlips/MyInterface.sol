// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


interface ICounter {
    function count() external view returns (int);
    function addToCount() external;
}

///inherit from the interface
contract MyInterface is ICounter {
    int counter = 0;

    function count() external view override returns (int){
        return counter;
    }

    function addToCount() external override{
        counter++;
    }
}