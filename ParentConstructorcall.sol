// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract S{

    string public name;
    constructor(string memory _name){
        name=_name;
    }
}


contract T{
    string public text;

    constructor(string memory _text){
        text=_text;
    }
}


contract U is S("SHUKLA"),T("SHASHANK"){

}


contract V is S,T{
    constructor(string memory _name,string memory _text) S(_name) T(_text){
        
    }
}