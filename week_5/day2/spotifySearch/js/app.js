
 
$(document).ready(function(){
	$(".js-search-form").on("submit", function(event){
		event.preventDefault();
		search();	
	});

});

var theArtist = $(".js-artist-name").val();

function search() {
 	$.ajax({
    url: "https://api.spotify.com/v1/search?type=artist&query="+ $(".js-artist-name").val(),
    success: function (response) {
      console.log(response);
      showArtist(response);
    },
    error: function () {
      alert("there was an error.");
    }
  });
}

function showArtist(response){
		var thePic = response.artists.items[0].images.length - 2
		var artistId = response.artists.items[0].id
		var html = `
		<h4> 
		<button class="js-show-albums" data-artist-id="${artistId}">
		Show Albums by ${response.artists.items[0].name}
		</button>
		</h4>
		<img src= "${response.artists.items[0].images[thePic].url}" >
		`;
		$(".js-results").html(html);
		pushButton();		
};


function pushButton() {
	$(".js-show-albums").on("click", function(event){
		var artistId = $(event.currentTarget).data("artist-id");
		// var artistId = $(event.currentTarget).prop("data-artist-id");
	    var artistName = $(event.currentTarget).text();
	    // Remove extra spaces from name
	    artistName = artistName.trim();
	    console.log(`You clicked the artist ${artistId}`);

	    $.ajax({
	      url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
	      success: function (response) {
	      	console.log(response)

	        $(".js-artist-name").text(`Albums`);

	        displayAlbums(response.items);
	      },
	      error: function () {
	        alert("SPOTIFY SCREWED UP!" )
	      }
	    });
	 });
}



function displayAlbums(albums){
$(".js-albums").empty();

  albums.forEach(function (album) {

    var html = `
      <!-- Store the album ID for the next AJAX request -->
      <li data-album-id="${album.id}">
        <img src="${album.images[1].url}">
        <h5> ${album.name} </h5>
      </li>
    `;

    $(".js-albums").append(html);

  });

  $(".js-albums-modal").modal("show");

}
