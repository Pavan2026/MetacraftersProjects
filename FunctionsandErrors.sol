// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract errors{
    //state variables 
    address public owner=msg.sender;
    uint public age=20;


 
    function checkRequire(uint _x) public{
        age+=5;
        require(_x>10,"The value of x must be greater than 10");
    }

    

     error customError(string);// custom error handling which takes less amount of gas


    function checkRevert(uint _i) public{
        age+=5;
        if(_i<10){
            revert customError("The value of i must be greater than 10");
        }
    }


    // Assert method
// This assert method is used for internal error handling 
//This method uses total amount of gas when compared to Require and Revert

    function CheckOwnership() public{
        age+=5;
        assert(owner==0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    }
}
