$(document).ready(function(){
	$(".js-creepy-stalker").on("click", function(){
		if ("geolocation" in navigator) {
	// if the browser has the geolocation nuttable stuff

	getUserLocation();
}

else {
	 alert("you screwed everything up")
} 
	});
});



function getUserLocation(){
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
	// optional third parameter is an options object
}


function successCallback(position){
	console.log("Success!! Yah computers!")
	console.log(position)

	var lat = position.coords.latitude
	var lng = position.coords.longitude

	displayMap(lat, lng);	
}

function errorCallback(error){
	console.log("ERROR", error);
}



function displayMap(latitude, longitude){
	var lat = Number(latitude)
	var lng = Number(longitude)
	var mapDiv = document.getElementById('map');
    var map = new google.maps.Map(mapDiv, {
      center: {lat: lat, lng: lng},
      zoom: 15
    });
}






