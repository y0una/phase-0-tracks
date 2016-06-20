// RELEASE 0: Find the Longest Phrase
// Pseudocode:
// Create a longestString function and have it take in an array paramenter
  // Start longest_length_count at 0
  // Have a temporary variable longestString = ""
  // Create loop that goes through each item in the array
    // if the length of the array we check is greater than longest_length_count make it the longest_length_count. Then make the longestString that same item
    // return this longestString in the array

function longestString(array) {
    var longest_length_count = 0;
    var longestString = "";
    for (var i = 0; i < array.length; i++) {
        if (array[i].length > longest_length_count) {
        longest_length_count = array[i].length;
        longestString = array[i];
        }
    }
    return longestString;
}

// RELEASE 1: Find a Key-Value Match
// Pseudocode:
// Make function that takes 2 objects (hash)
  // For each keyValuePair in obj1:
  // - see if a keyValuePair is in obj2
  // - if keyValuePair of obj2 matches with keyValuePair of obj1 make match to true
  // return the match result

function keyValueMatch(obj1, obj2) {
  var match = false
  for (var keyValuePair in obj1) {
    if (obj2.hasOwnProperty(keyValuePair)) {
      if (obj2[keyValuePair]===obj1[keyValuePair]) {
        match = true
      }
    }
  }
  return match;
}

// RELEASE 2: Generate Random Test Data
// Pseudocode:





// DRIVER CODE
// RELEASE 0: Find Longest Phrase
console.log(longestString(["B b b b lue", "red", "purple"]));
console.log(longestString(["Voluptas sit", "Sed ut perspiciatis unde", "Nemo enim"]));
console.log(longestString(["Clementines", "grapes", "apples"]));


// RELEASE 1: Find a Key-Value Match
var object1 = {name: "Amelia", age: 54, pets: "no"};
var object2 = {name: "Youna", age: 54, pets: "yes"};
var object3 = {name: "Max", age: 20, pets: "no"};
var object4 = {name: "Max", age: 51, pets: "N/A"};
console.log(keyValueMatch(object1,object2)); // => true
console.log(keyValueMatch(object2,object3)); // => false
console.log(keyValueMatch(object3,object4)); // => true

// RELEASE 2: Generate Random Test Data
