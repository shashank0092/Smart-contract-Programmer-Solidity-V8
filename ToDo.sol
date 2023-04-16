// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ToDoList{
    struct Todo{
        string Text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public{
        todos.push(
            Todo({
                Text:_text,
                completed:false
            })
        );
    }


    function updateText(uint _index,string calldata _text)public{
        todos[_index].Text=_text;
    }   

    function get(uint _index) public view returns(string memory,bool){
        Todo memory todo=todos[_index];
        return (todo.Text,todo.completed);
    }

    function toggleCompleted(uint _index) public{
        todos[_index].completed=!todos[_index].completed;
    }
}