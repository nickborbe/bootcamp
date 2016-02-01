var Car = function(model, noise) {
	this.wheels = 4;
	this.model = model;
	this.noise = noise;
};

var honda = new Car('fit', 'crickets');

Car.prototype.printCar = function(){
	console.log('the ' + this.model + ' goes ' + this.noise + '!!!');
}

honda.printCar();