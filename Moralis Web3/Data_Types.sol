// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract myGame {
    uint256 public playersCount = 0;
    
    // Player[] public Players;
    mapping(address => Player) public Players; // get the player with address instead of index

    enum level { Novice, Intermidiate, Advanced }

    struct Player {
        address playerAddreess;
        level playerLevel;
        string firstName;
        string lastName;
    }

    function addPlayer(string memory _fName, string memory _lName) public {
        Players[msg.sender] = Player( msg.sender, level.Intermidiate, _fName, _lName );
        playersCount++;
    }

    function getPlayerLevel(address _address) public view returns (level) {
        return Players[_address].playerLevel;
    }
}

///constant: tells solidity that a var cann not be changed
///struct: struct types are used to represent a record. they allow you to create your own data type
///anum: Enums restricted a variable to have one of only a few predefined values, the values in this enumerated list are called anums
/// array: Players[] publix players; 