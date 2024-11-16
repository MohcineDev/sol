// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MyEnums {
    // 0 original, 1 rare, 2 super rare
    /// restricted a var to have only one of a few predefined values
    ///
    enum Rarity {
        original,
        rare,
        super_rare
    }

    //rarity type
    Rarity public rarity;

    constructor() {
        rarity = Rarity.rare;
    }

    function makeSuperRare() public {
        rarity = Rarity.super_rare;
    }
}
