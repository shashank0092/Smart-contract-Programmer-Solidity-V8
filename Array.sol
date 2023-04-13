// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract array{
    uint[] public nums=[1,2,3];
    uint[3] public fixesNum=[4,5,6];

    function exapmles() public{
        nums.push(100);
        nums.pop();

        delete nums[2];

        uint length=fixesNum.length;


       
    } 

     function returnArray() public returns(uint[] memory){
            return nums;
        }
}