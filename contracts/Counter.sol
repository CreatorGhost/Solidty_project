// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Counter {
    uint public count;
    string public name ;
    constructor(string memory _name,uint _count) {

        name = _name;
        count = _count;
    }
    function increment() public returns (uint cnt) {
        count++;
        return count;
    }
    function decrement() public returns (uint cnt) {
        count--;
        return count;
    }
    function updateName(string memory nam) public returns (string memory nm) {
        
        name = nam;
        return name;
    }
    function getName() public view returns(string memory _name){
        return name;
    }

    function setName(string memory new_name) public returns(string memory _name){
        name = new_name;
        return name;
    }
}