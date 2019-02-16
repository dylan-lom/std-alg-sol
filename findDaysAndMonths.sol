pragma solidity ^0.5.1;
//findDaysAndMonths.sol

contract findDaysAndMonths {
	bytes dateString;
	
	function getDateString(string memory DS) public returns (bytes memory) {
		dateString = bytes(DS);
		return dateString;
	}
	uint datePos = 0;
	uint monthPos = 2;
	uint yearPos = 4;
   
	function getIndex(uint index) public view returns (bytes1) {
		return dateString[index];
	}
	
    
	
	function printDate() public view returns (bytes1, bytes1, bytes1, bytes1) {
	    return (dateString[datePos], dateString[datePos+1],
	            dateString[monthPos], dateString[monthPos+1]);
    }
}