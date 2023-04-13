// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Errors{

    function testRequire(uint i) public pure{
        require(i<10,"I is less then 10");
    }

    function testRevert(uint i) public pure{
        if(i>10){
            revert("I IS GRATER THEN 10");
        }
    }

    uint public num=123;
    function testAssert() public view{
        assert(num==123);
    }


    function incNum() public  {
        num++;
    }
}