/*
######################################
Release 0: Compare Variables, Data Types, and Printing


1. What is the equivalent of nil in JavaScript?
- null

2. When you declare variables in JavaScript, it's a good idea to use the var keyword (you can Google it if you're interested, or just take our word for it). We can see other differences as well: how is the naming convention in JavaScript different from Ruby?
- instead of the string interpolation #{currently_learning}
puts "currently_learning has a value of #{currently_learning}" we just use string + variable: "currently_learning has a value of " + currentlyLearning

3. How do you print a variable in JavaScript?
- When printing instead of puts we use "console.log();" and put the stuff we want to print in the ()

4. How do you end a line of code in JavaScript?
- with ";"

5. How do you write comments in JavaScript?
- // for single line and
/*

for
multi
line
*/

/*

######################################
Release 1: Compare If/Else Statements

Find at least three differences in how if/else blocks are declared in JavaScript vs. Ruby.
- Ruby : elsif :: JS : else
- no "end" needed in JS
- variables are in parenthesis: if (isOver21 && drinksAlcohol)
- what's being printed needs to be within {} :
if (isOver21 && drinksAlcohol) {
  console.log("Would you like a drink -- beer or wine, perhaps?");
}

######################################
Release 2: Compare Functions (aka Methods)

1. How are functions declared in JavaScript? Try declaring a different function and calling it.
- Functions in JS also take arguments it has the equation in curly brackets {} and needs a "return" in front of the equation with a ; at the end. If the function does not have arugments you can print by just calling the function "sayHello();
function divide(a, b){
  return a / b;
}
console.log(divide(8, 4));

2. Do JavaScript functions have implicit return? (What happens when you remove the return keyword from the add function?
- JS functions don't have implicit return. If you take away the return it becomes undefined.

3. Notice that the declaration of the sayHello function has parentheses, even though sayHello doesn't take any parameters. Are those necessary? What happens if you remove them?
- If I remove the parentheses after sayHello then I get "[Function: sayHello]" and don't get the right result. I need the parentheses there.

4. In Ruby, there's no need to use parentheses on a method call if you don't need to pass any arguments to the function. In the JavaScript version, does the code inside sayHello still execute if you remove the parentheses from the function call?
- No the code inside sayHello does not execute if I remove the parentheses from the function call

######################################
Release 3: Compare Loops

var string = "Loop over me!";
// Look at line 8:
// We initialize our counter, set its "while" condition,
// and give the increment command that should happen
// after each iteration of the loop --
// all in one tight line of code!
/*
for (var i = 0; i < string.length; i++) {
  console.log(string[i]);
}
*/

/*
for (var i=0; i < 11; i++) {
  console.log(i);
}
*/

for (var i=11; i > 0; i--) {
  console.log(i);
}

//while i > 0 subtract 1




*/