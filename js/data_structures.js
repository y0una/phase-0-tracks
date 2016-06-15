// 7.2 Mandatory Pairing: Data Structures
// Paired with Caitlin Johnson

var horseName = ["Amanda", "Anabel", "Nibisco", "Nickles and Dimes"];
var colors = ["teal", "burnt sienna", "aquamarine blue", "yellow"];

colors.push("red");
horseName.push("Nibby");

horseName.forEach(function(n) { console.log(n); })

for (var i = 0; i < horseName.length; i++) {
  console.log(horseName[i] + ":" + colors[i]);
}


function Car(model, color, year){

  console.log("Our new car:", this);

  this.model = model;
  this.color = color;
  this.year = year;

  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's buy a car ...");
var newCar = new Car("Tesla", "red", 2015);
console.log(newCar);
console.log("Our car goes fast!");
  newCar.drivesFast = function() { console.log("Vroooom!")};
newCar.drivesFast();