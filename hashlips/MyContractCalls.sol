// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

//0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
contract MyOtherContract{
    uint128 public age = 29;

    function getAge() public view returns (uint128){
        return age;
    }
}

contract MyContractCalls{

    function getAgeFromOtherContract(address _contractAddress) public view returns (uint128){
        MyOtherContract other = MyOtherContract(_contractAddress);
        uint128 age = other.getAge();
        return age;
    }
}

