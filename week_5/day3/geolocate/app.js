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

// -----------------------map search stuff------------------

var map;
var infowindow;

function initMap() {
  var pyrmont = {lat: -33.867, lng: 151.195};

  map = new google.maps.Map(document.getElementById('map'), {
    center: pyrmont,
    zoom: 15
  });

  infowindow = new google.maps.InfoWindow();
  var service = new google.maps.places.PlacesService(map);
  service.nearbySearch({
    location: pyrmont,
    radius: 500,
    type: ['store']
  }, callback);
}

function callback(results, status) {
  if (status === google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
}






