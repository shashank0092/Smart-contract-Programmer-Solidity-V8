// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A{

    function data1() public pure returns(string memory){
        return "A";
    }

    
    function data2() public pure returns(string memory){
        return "A";
    }
}


contract B is A{
    function dataB1() public pure{
        A.data1();
    }

      function dataB2() public pure{
        super.data2();
    }

}