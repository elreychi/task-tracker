// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TaskTracker {
    struct Task {
        string content;
        bool completed;
    }

    mapping(address => Task[]) public tasks;

    error IndexTidakValid();

    function addTask(string memory _content) public {
        tasks[msg.sender].push(Task({content: _content, completed: false}));
    }

    function completeTask(uint256 _index) public {
        if (_index >= tasks[msg.sender].length) {
            revert IndexTidakValid();
        }
        tasks[msg.sender][_index].completed = true;
    }

    function editTask(string memory _content, uint256 _index) public {
        if (_index >= tasks[msg.sender].length) {
            revert IndexTidakValid();
        }
        tasks[msg.sender][_index].content = _content;
    }

    function deleteTask(uint256 _index) public {
        if (_index >= tasks[msg.sender].length) {
            revert IndexTidakValid();
        }
        tasks[msg.sender][_index] = tasks[msg.sender][tasks[msg.sender].length - 1];
        tasks[msg.sender].pop();
    }
}

