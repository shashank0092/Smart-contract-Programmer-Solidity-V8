// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ViewPure{

    uint public a=10;

    function addView() public view returns(uint){
        return a+10;
    }

    function addPure(uint i,uint j) public pure returns(uint){
        return i+j;
    }

    

}