// ######################################
// Release 4: Write a JavaScript Program

function reverse(string){
// Placeholder for new string
  var newString = "";
// Count how many characters there are in string. Subtract the index of the string's length by 1
// Until it is greater than or equal to 0 count backwards down
  for (var i=string.length-1; i >= 0; i--) {
// Print each one as a new string
    newString += string[i];
  }
  return newString;
}
// Set driver code
console.log(reverse("youna"));


