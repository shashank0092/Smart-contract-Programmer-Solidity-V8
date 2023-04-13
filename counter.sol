// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Counter{

    uint public counter=10;

    function increaseCounter()public returns(uint) {
        counter++;
        return counter;
    }

    function deacreaseCounter() public returns(uint){
        counter--;
        return counter;
    }



}