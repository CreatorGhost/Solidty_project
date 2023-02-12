// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Mesenger{
    string public message;
    uint public msg_count;
    address public addr;
    constructor(string memory _message){
        message = _message;
        msg_count = 0;
        addr= msg.sender;
    }
    function get_message() public view returns(string memory _message)
    {
        return message;
    }
    function update_message(string memory new_message) public payable 
    {
        // check if the owner is makeing the changes to the message as well as it also compare if he is sending 1 eth
        if(msg.sender== addr && msg.value == 1 ether ){
        message = new_message;
        msg_count++;
        }
    }
    
}