// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract MyInheritance_A{
    string internal name = "MohcineDev";
}

contract MyInheritance_B is MyInheritance_A{
    ///virtual keyword means it will be overrided like C#
    function getNameA() public view virtual returns (string memory){
        return name;
    }
}
///a contract can inherit from more than one contract 
contract MyInheritance_C is MyInheritance_B{
    function getNameA() public view virtual override returns (string memory){
        return "Moh";
    }
}