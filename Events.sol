// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// EVENTS KA USE KARKE TRNSACTIONAL LOG MAIN DATA STORE KAR SAKTE HAIN EVENT MAIN STORE DATA SMART CONTARCT SE VAPAS NAHI LA SAHTE HAIN
// INDEX KEYWORD KA USE KARKE EVENTS KO SEARCH KAR SAKTE HAIN
// EVENTS MAIN SIRF 3 PARAMETERS HI INDEXED HO SAKTE HAIN

contract Events{
    event Log(string message,uint val);
    event IndexedLog(address indexed sender,uint val);

    function example() public{
        emit Log("shukla",123);
        emit IndexedLog(msg.sender,7);
    }

    event Message(address indexed _from,address indexed _to,string message);

    function sendMessage(address _to,string calldata message)public{
        emit Message(msg.sender,_to,message);
    }
}