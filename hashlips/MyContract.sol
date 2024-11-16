// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

/// @author MohcineDev
contract MyContract{
    string public name = "MohcineDev";

    function updateName(string memory _newName) public{
        name = _newName;
    }
}