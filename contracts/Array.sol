// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

contract Array{

    uint[4] public static_arr = [1,2,3,4];

    uint[] public dynamic_arr;

    // bytes array is declare by witing bytes and then the no. of bytyes in the below case its 4 and its imputable 
    // it stores value in the form of hexadecimal 
    bytes4 public bt4;
    
    function get_dynamic_arr_lenght() public view returns (uint){
        return dynamic_arr.length;
    }

    function upadteValue(uint _idx ,uint _value) public{
        static_arr[_idx] = _value;
    }

    function pushValue(uint _value) public {
        dynamic_arr.push(_value);
    }
    function popValue() public{
        dynamic_arr.pop();
    }
}