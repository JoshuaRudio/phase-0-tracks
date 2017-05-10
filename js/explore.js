// Method: to take a string and print the string in reverse order
// Input: a string
  // steps:
  // turn a string into a data structure
  // reverse the order of the data structure
  // conver data structure back into string
// Output: original string in reverse order

function reverseString(string) {
	// This will change the string being reversed into an array
	var arrayOfString = string.split("");
  // This will reverse the order of the array
	var reversedArray = arrayOfString.reverse();
	// This will change the array back into a string with the reversed order
	var reversedString = reversedArray.join("");
	// This will return the reversed string for this method
	return reversedString;
}

// Stores the result of "Hello!" thru reverseString into a variable called backwardsHello
var backwardsHello = reverseString("Hello!");

// Print the method to the console
console.log(backwardsHello);

// Prints variable if 1 == 1
if (1 == 1) {
	console.log(backwardsHello);
} else {
	console.log("1 is not equal to 1!");
}

// Conditional statement to check if method does not run if a condition is false
if (1 == 0) {
	console.log(backwardsHello);
} else {
	console.log("1 is not equal to 0!");
}