var colors = ["blue", "red", "orange", "yellow"];
var names = ["spot", "moo", "joe", "alex"];

// colors.push("purple");
// names.push("dawn");

var horses = {};

if (colors.length == names.length) {
  for (var i = 0; i < colors.length; i++) {
	  horses[names[i]] = colors[i];
  }
}

console.log(horses);

// Release 2

function Car (make, model, color, topSpeed) {
  this.make = make;
  this.model = model;
  this.color = color;
  this.topSpeed = topSpeed
  
  this.rev = function() { console.log("vroom");
  };
}

var firstCar = new Car("Ford", "Fiesta", "white", 130);
console.log(firstCar);
console.log(firstCar.rev());

var secondCar = new Car("Volvo", "s40", "white", 110);
console.log(secondCar);
console.log(secondCar.rev());
