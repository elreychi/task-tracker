// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
 
 
 import {Test} from "forge-std/Test.sol";
 import {TaskTracker} from "../src/TaskTracker.sol";
 
 contract Tasktracker is Test {
    TaskTracker public tracker;
 
    function setUp() public {
      tracker = new TaskTracker();
 }
 
    function test_AddTask() public {
      tracker.addTask("Beli mobil") ; 
      (string memory content, bool completed) = tracker.tasks(address(this), 0) ; 
      assertEq(content, "Beli mobil");
      assertEq(completed, false); 
  }
    function test_RevertTaskInvalid() public {  
        vm.expectRevert(TaskTracker.IndexTidakValid.selector) ;
        tracker.completeTask(0) ;
 }
} 
  
 
 
 
 
 
 
 
 
 
 
 
 
    
 
 
 
 
 
 
 
 
 
  
 
 
 
 
 
 
  
 
 
 
  
 
 
 
 
 
 
 
 
  
 
 
