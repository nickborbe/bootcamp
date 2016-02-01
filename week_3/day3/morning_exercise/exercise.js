var array = [2, -5, 10, 5, 4, -10, 0, -4];

// write a function that iterates over the array and tells you which, if any, pairs of numbers add up to 0


function process(data) {
var positions = [];
data.forEach (function (a, i) {
	data.forEach (function (b, j) {
		if (a+ b === 0) {positions.push (i + "," + j)}
	});
});
return positions;
}
console.log(process(array));