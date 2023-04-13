// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FunctionModifiers{

    bool paused=false;

    uint public data=10;

    modifier isPaused(){
        require(paused==false,"Paused is not false");
        _;
    }
        

    function incData() public isPaused returns(uint)  {
        return data++;
    }

    function dncData() public isPaused returns(uint){
        return data--;
    }

    function changePaused() public {
        paused=true;
    }
}