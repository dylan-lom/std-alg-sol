//findDaysAndMonths.js

function printDate(day1, day2, month1, month2) {
	day = String.fromCharCode(day1, day2);
	month = String.fromCharCode(month1, month2);
	return "The day is " + day + ", and the month is " + month
}	
	
console.log(printDate(0x31, 0x39, 0x30, 0x32))