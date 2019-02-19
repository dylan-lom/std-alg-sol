pragma solidity ^0.5.1;

contract Lotto {
    uint nonce;
    uint[6] results;
    function random(uint range) public view returns (uint8) {
        return uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, nonce)))%range);
    }
    
    function getTimestamp() public view returns (uint) {
        return block.timestamp;
    }
    function getDifficulty() public view returns (uint) {
        return block.difficulty;
    }
    
    function drawLotto() public returns (uint[6] memory){
        for (uint i=0; i<6; i++){
            results[i] = random(100);
            nonce++;
        }
        return results;
    }
}
