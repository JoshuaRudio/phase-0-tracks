// write a function that takes an array of words or phrases and 
// returns the longest word or phrase in the array.
// METHOD: longest phrase
// input: an array of string
	// steps:
	// Find the length of each string in the array
	// Return the longest string
// Output: the longest string in the array


function phraseLength(array) {
	var numberOfLetters = 0;
	var longestPhrase;
	
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > numberOfLetters) {
			numberOfLetters = array[i].length;
			longestPhrase = array[i];
		}
	}
	console.log(longestPhrase);
}

// write a function that takes two objects and checks to see if 
// the objects share at least one key-value pair.
// METHOD: keyValues
// input: two objects
	// steps:
	// Compare the keys of two objects
	// IF there is a match, print the matching value
	// ELSE declare there is no match
// output: matching value or if there is no match

function keyValues(firstObject, secondObject) {
	for (var key in firstObject) {
    if (firstObject[key] === secondObject[key]) {
    	var match = true;
      var matchedValue = firstObject[key];
	 }
  }
  if (match) {
  	console.log(matchedValue)
  } else {
  	console.log("No matching values")
  }
}

// Write a function that takes an integer for length, 
// and builds and returns an array of strings of the given length.
// METHOD: randomStrings
// input: an integer (x)
  // Make (x) amount of random strings
  // string has a minimum of 1 letter and max of 10
// output: x amount of random strings

function randomStrings(int) {
	var words = [];
	var letters = 'abcdefghijklmnopqrstuvwxyz';

	for(var i = 0; i < int; i++) {
		var word = [];
	  min = Math.ceil(1);
	  max = Math.floor(10);

	  for(var e = 0; e < Math.random() * 10; e++) {
	  	word += letters.charAt(Math.floor(Math.random() * letters.length));
	 	}
	 	words.push(word)
	}
	return words;
}

// Driver code for phraseLength
var sampleArray = new Array('long phrase', 'longest phrase', 'longer phrase');
var sampleArray2 = new Array('Joshua Rudio', 'Rojine De Las Alas', 'Edward the Cat', 'Alphonse the Cat');
phraseLength(sampleArray);
phraseLength(sampleArray2);

// Driver code for keyValues
var sampleObject1 = {name: "steven", age: 54}
var sampleObject2 = {name: "Tamir", age: 54}
var sampleObject3 = {animal: "Dog", legs: 4}
var sampleObject4 = {animal: "Cat", legs: 4}

keyValues(sampleObject1, sampleObject2);
keyValues(sampleObject3, sampleObject4);
keyValues(sampleObject4, sampleObject1);