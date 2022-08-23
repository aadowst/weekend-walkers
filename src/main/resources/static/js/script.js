
function initMap(){
    let location = {lat: 51.508742, lng: -0.120850}
    var map = google.maps.Map;
    map = new google.maps.Map(document.getElementById("googleMap"), {zoom: 12, center: location});
    var marker = new google.maps.Marker({
        position: location, map: map
    });

    google.maps.event.addListener(map, 'click', function(event){
        changeLocation(event.latLng)
    })
    console.log()
}



function changeLocation(coords){
    map = new google.maps.Map(document.getElementById("googleMap"), {zoom: 12, center: coords});
    var marker = new google.maps.Marker({
        position: coords, map: map
    });
    google.maps.event.addListener(map, 'click', function(event){
        changeLocation(event.latLng)
    })
    document.getElementById("latLng").innerText = coords;
}

