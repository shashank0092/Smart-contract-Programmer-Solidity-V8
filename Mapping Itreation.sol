// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract Mapping{

    mapping(uint=>uint) public balances;
    uint balanceLength=0;

    function set(uint _key,uint _value) public{
        balances[_key]=_value;
        balanceLength++;
    }

    function getSize() public view returns(uint){
        return balanceLength;
    }

    function first() public view returns(uint){
        return balances[];
    }

    function last() public view returns(uint){
        return balances[balanceLength-1];
    }

    function get(uint i) public view returns(uint){
        return balances[i];
    }
}