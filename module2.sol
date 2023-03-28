// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Frontend {

     string public name="JOHN";
     uint public age=40;


     function getname() public view returns(string memory ){
         return Frontend.name;
     }
    

       function getage() public view returns(uint ){
         return Frontend.age;
     }
     
