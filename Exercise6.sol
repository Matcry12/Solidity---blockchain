// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract Ex1{
    bool public b = true;
    
    function get_b() public view returns(bool){
        return b;
    }
}
contract Ex2{
    int x = 0;
    function addToX2(int y) public{
        x = x + y;
    }
    function get_x() public view returns(int){
        return x;
    }
}
contract Ex3{
    int public x = 0;
    int public c = 0;
    function change_c(int z) public {
        c = z;
    }
    modifier increasePromax() {
        if(c < 0){
            revert();
        }
        else{
            x = x + int(c);
        }
        _;
    }
    function increaseX() public increasePromax{
        //how to empty????
    }
}
contract Ex4{
    function returnTwo() public pure returns(int z, bool x){  
        (z, x) = (-2, true);
        // return but not use return???
    }
}
