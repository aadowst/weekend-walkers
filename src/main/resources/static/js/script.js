function initMap() {
//   let location = { lat: 51.508742, lng: -0.12085 };
  let location = document.getElementById()
  var map = google.maps.Map;
  map = new google.maps.Map(document.getElementById("googleMap"), {
    zoom: 12,
    center: location,
  });
  var marker = new google.maps.Marker({
    position: location,
    map: map,
  });

  google.maps.event.addListener(map, "click", function (event) {
    changeLocation(event.latLng);
  });

}

function changeLocation(coords) {
    console.log(coords);

  map = new google.maps.Map(document.getElementById("googleMap"), {
    zoom: 14,
    center: coords,
  });
  var marker = new google.maps.Marker({
    position: coords,
    map: map,
  });
  google.maps.event.addListener(map, "click", function (event) {
    changeLocation(event.latLng);
  });
}

var locationForm = document.getElementById('location-form');
locationForm.addEventListener('submit', geocode);

function geocode(e){
    e.preventDefault();
    var location = document.getElementById('location-input').value;
    axios.get('https://maps.googleapis.com/maps/api/geocode/json', {
        params:{
            address: location,
            key: 'AIzaSyA246nlIjYYGu89FdDHR5g0NiJbIyr9L3k'
        }
    })
    .then(function(response){
        console.log(response);
        changeLocation(response.data.results[0].geometry.location);

    })
    .catch(function(error){
        console.log(error);
    });
    }

