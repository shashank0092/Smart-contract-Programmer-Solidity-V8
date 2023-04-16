// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Fallback tab work karega jab koi function exist na ho tab call kare and direct ether send ke liye

// fallback jaisa hi recive hain 

//             ETHER IS SEND TO CONTARCT
//                         |
//                 IS MSG.DATA EMPTY?
//                         / \
//                     YES   NO
//                     /      \
//         RECIVE EXSIST       fallback()
//             /  \
//         YES    NO
//         /       \
// recive()      fallback()
contract fall{
    event Log(string func,address sender,uint value,bytes data);

    fallback() external payable{
        emit Log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable{
        emit Log("Recive",msg.sender,msg.value,"");
    }
}