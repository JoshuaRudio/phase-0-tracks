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


var sampleArray = new Array('long phrase', 'longest phrase', 'longer phrase');
phraseLength(sampleArray);