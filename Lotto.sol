pragma solidity ^0.5.1;

contract Lotto {
    uint ts;
    uint[6] results;
    function random(uint range) public view returns (uint8) {
        return uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty)))%range);
    }
    
    function getTimestamp() public view returns (uint) {
        return block.timestamp;
    }
}
