// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MyErrorsAndChecks{

    function myPureFunc(uint32 _x, uint32 _y) public pure returns (uint32 xy){
        require(_x > _y, "Y is bigger than X");
        return _x + _y;
    }
    
    function myPureRevert(uint32 _x, uint32 _y) public pure returns (uint32 xy){

        //some code here
        if(_x == 5){
            revert("X = 5"); //break  the function 
        }
        return _x + _y;
    }
}