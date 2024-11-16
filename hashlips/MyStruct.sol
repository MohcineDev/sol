// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract MyStruct{
    struct NFT {
        string name;
        uint256 dna;
    }

    NFT[] public nftList;

    function addNFT(string memory _name, uint256 _dna) public{
        NFT memory newNFT;

        newNFT.name = _name;
        newNFT.dna =_dna;

        nftList.push(newNFT); 
    }

    function getNftName(uint256 _index) public view returns(string memory){
        return nftList[_index].name;
    }
}