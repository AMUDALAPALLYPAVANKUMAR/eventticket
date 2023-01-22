// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract EventTicket {
    uint256 public Numberoftickets;
    uint256 public ticketprice;
    uint256 public totalamount;
    uint256 public startat;
    uint256 public endat;
    uint256 public timestamp;
    string public message ="buy your first event ticket";

    constructor(uint256 _ticketprice){
     ticketprice = _ticketprice;
     startat = block.timestamp;
     endat = block.timestamp + 7 days;
     timestamp =(endat - startat)/60/60/24;
    }
 function buyticket(uint _value) public returns(uint ticketid) {
     Numberoftickets++;
     totalamount+= _value;
     ticketid = Numberoftickets;
 }
 function getamount() public view returns(uint256){
    return totalamount;
    }
}
