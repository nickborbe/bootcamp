"use strict";

class Car {

	constructor(model, noise) {
		this.model = model;
		this.noise = noise;
		this.numberOfWheels = 4;
	}



carNoise (){
	console.log (`${this.model} makes the sound ${this.noise}`);
}


}

// module.exports = Car;


// ------------------------------------------------------
// if we created a new file we'd split here

// "use strict";

// var Car = require("./lib/car.js")




var sportsCar = new Car("Porsche", "Vrooom");

sportsCar.carNoise();

var truck = new Car("Dodge Ram", "Chuuuug");

truck.carNoise();