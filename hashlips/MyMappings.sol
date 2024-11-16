// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MyMappings{
    // mapping(key => value);

    mapping(uint => address) public nfts;
    uint256 counter = 0;

    function getOwnerOfNFT(uint256 _id) public view returns (address) {
        return nfts[_id];
    }

    function setOwnerOfNFT(address _address) public{
        nfts[counter] = _address;
        //increment the counter to avoid reassign of nfts[0] when calling the function again
        counter++;
    }

}