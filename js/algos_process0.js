// Release 0: Find the Longest Phrase
/*
create findLongestPhase
Start temporary longest at 0
Set placeholder longestPhrase
Go through each string and compare it with the next
*/

function findLongestPhase(str) {
  var words = str.split(/\s+/);
  var longest = "";

  for (var i = 0; i < words.length; i++) {
    if (words[i].length > longest.length) {
      longest = words[i];
    }
  }
  return longest;
}

var longestWord = findLongestPhase('The quick brown fox jumped over the lazy dog');
var longestWord = findLongestPhase('Apple Banana Orange Pomegranategranate');
var longestWord = findLongestPhase('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod');
console.log('Longest Phrase: "' + longestWord + '"');


//console.log('Longest Word Length: ' + longestWord.length);

// Release 1: Find a Key-Value Match
