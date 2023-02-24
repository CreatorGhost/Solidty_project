// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Mesenger{
    // state variables
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
    function update_message(string memory new_message) public payable  // payable parameter is used to allow our funtion takes eth from the user
    {
        // check if the owner is makeing the changes to the message as well as it also compare if he is sending 1 eth
        if(msg.sender == addr && msg.value == 1 ether ){
        message = new_message;
        msg_count++; 
        }
        else{
            // when the user have not sent 1 eth we need to send back the money insted of locking whatever ammount he have sent
            payable(msg.sender).transfer(msg.value);
            // if you need to transfer the funt to any custom address you can use address() funtion example given below:  
            // payable(address(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)).transfer(msg.value);
        }
    }
    
}