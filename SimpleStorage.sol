// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract simple{

    string public text;

    function set(string calldata _text)public{
        text=_text;
    }

    function get() public view returns(string memory){
        return text;
    }
}