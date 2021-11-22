//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address[] public players;
 
    constructor() {  
        manager =  msg.sender;
    }
    
    function enter() public payable {
        require(msg.value == 1 ether);
        players.push(msg.sender);
    }
    
    function random() public view returns (uint) {
        return uint(keccak256(abi.encode(block.difficulty, block.timestamp, players.length)));
    }
    
    function pickWinner() public restricted {

        uint indexWin = random() % 10;
        if(indexWin < 9){
            payable(manager).transfer(address(this).balance);
        } else {
            uint index = random() % players.length;
            payable(players[index]).transfer(address(this).balance);           
        }
        players = new address[](0);
    }
    
    modifier restricted() {
        require(msg.sender == manager);
        _;
    }
    
    function getPlayers() public view returns (address[] memory) {
        return players;
    }
}