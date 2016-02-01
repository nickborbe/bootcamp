function printValue(value) {
	console.log(value);
}

function wait(milliseconds, callback) {
	var value = milliseconds / 5
	setTimeout(function() {
	callback(value);
	}, milliseconds);
}

printValue(15);

wait(3000, printValue);

printValue(999999);