// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// THEREE WAYS TO SEND ETHERS
// transfer--2300 gas,reverts
// send-- 2300 gas,retuns bool
// call-- all gas,retuns bool and data


contract sendETH{
    constructor() payable{}

    function sendViaTransfer(address payable _to) public payable{
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) public payable{
        bool sent=_to.send(123);
        require(sent,"send is failed");
    }


    function sendViaCall(address payable _to) public payable{
        (bool success,)=_to.call{value:123}("");
        require(success,"call failed");
    }
}


contract EthReceiver{

    event Log(uint amount,uint gas);

    receive() external payable{
        emit Log(msg.value,gasleft());
    }
}