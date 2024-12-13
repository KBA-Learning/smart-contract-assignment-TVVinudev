// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MatchContract{
    uint8 public a;
    uint8 public b;
    uint8 public c;
    uint8 public single;

    function setValue(uint8 d,uint8 e,uint8 f) public {
        a = d;
        b = e;
        c = f;
    }

    function largest() public view returns (uint8) {
     

        if (a >b && a > c) {
            return a;
        }
        else if (b > c) {
            return b;
        }else {
        return c;
        }

    }

    function setSingleDigit(uint8 _single) public{
        single = _single;
    }

     function getDigit() public view returns (string memory) {
        if (single >= 0 && single <= 9) {
            string[10] memory digits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
            return digits[single];
        } else {
            return "Invalid Input"; 
        }
    }

    function checkSign(int8 value) public pure returns(string memory){
        if(value>0){
            return "Positive Number";
        }else if(value<0){
            return "Negative Number";
        }else{
            return "Zero";
        }
    }

}