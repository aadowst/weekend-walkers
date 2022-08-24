function initMap() {
  let location = { lat: 51.508742, lng: -0.12085 };
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
  console.log();
}

function changeLocation(coords) {
  let location = coords;
  console.log(location.toUrlValue());
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

$("#kt_daterangepicker_1").daterangepicker();
