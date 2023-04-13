// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract functions{

    function add(uint i,uint j) public pure returns(uint){
        return i+j;
    }

    function sub(uint i,uint j) public pure returns(uint){
        return i-j;
    }
}