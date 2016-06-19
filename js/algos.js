// Release 0: Find the Longest Phrase

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

console.log(longestString(["B b b b lue", "red", "purple"]));
console.log(longestString(["Voluptas sit", "Sed ut perspiciatis unde", "Nemo enim"]));
console.log(longestString(["Clementines", "grapes", "apples"]));

// Release 1: Find a Key-Value Match
// Pseudocode:
//

function