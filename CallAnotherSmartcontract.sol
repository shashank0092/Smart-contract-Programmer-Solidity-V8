// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CallTestContract{

    function setX(TestContract _test,uint _x) external  {
        _test.setX(_x);
    }

    function getX(TestContract _test) external view returns(uint){
        uint x=_test.getX();
        return x;
    }

    function setXandSendEther(TestContract _test,uint _x ) external payable {
        _test.setXandReceiveEther{value:msg.value}(_x);
    }

    function getXandValue(TestContract _test)external view returns(uint,uint ) {
        (uint x,uint value)=_test.getXandValue();
        return (x,value);
    }
}

contract TestContract{
    uint public x;
    uint public value=123;

    function setX(uint _x) external{
        x=_x;
    }

    function getX() external view returns(uint){
        return x;
    }

    function setXandReceiveEther(uint _x) external payable{
        x=_x;
        value=msg.value;
    }

    function getXandValue() external view returns(uint,uint){
        return(x,value);
    }


}

