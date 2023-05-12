//SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Variables {
    /* local - state ve global tipte variable'ler var
    
    local --> function içerisinde tanımlanırlar
              blockchain'de depolanmazlar

    state --> function dışında tanımlanırlar
              blockchain'de depolanırlar

    global --> biz tanımlayamayız, blockchain yapısı ile ilgilidir(time stamp gibi)
               ancak veri olarak ulaşabiliriz
               Global bilgilere function içerisinden ulaşabiliriz                  
    */

    string public text = "Hello State Variable"; //state variable (bir function içerisinde değil)
    uint public number = 246; //state vaiable
    address public caller; //state variable

    function doSomething() public {
       uint i = 789; // local variable

       //global variables:
       uint timestamp = block.timestamp; // current timestamp for blockchain
       address sender = msg.sender; // address of function caller

       caller = msg.sender; 

       }

       function getCaller() public view returns(address){
           return caller;
           // view function state değişkenini değiştirmez sadece gösterir

       } 
}  
