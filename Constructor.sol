// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract data{

    address public owner;
    uint public data;

    constructor(uint _x){
        owner=msg.sender;
        data=_x;
    }
}