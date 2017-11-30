function initMap() {

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    mapTypeId: 'terrain',
    center: setCenterPoint()
  });

  setMarkers(map);
}

function setMarkers(map) {
  getMarkersCoordinates(map);
}

function getMarkersCoordinates(map) {     
  var myRequest = new XMLHttpRequest();
  myRequest.open('GET', '/packages.json');
  myRequest.send();
  myRequest.onreadystatechange = function () { 
    if (myRequest.readyState === 4) {
      var markersCoordinates = JSON.parse(myRequest.responseText)
      drawMarker(markersCoordinates, map);
    }
  }
} 

function drawMarker(markersCoordinates, map) { 
  
  var infoWindow = new google.maps.InfoWindow(), marker, i;

  for (var i = 0; i < markersCoordinates.length; i++) {
    var pickup = markersCoordinates[i];
    var index = ( i +1 ).toString();
    var marker = new google.maps.Marker({
      position: {lat: pickup.latitude, lng: pickup.longitude},
      animation: google.maps.Animation.DROP,
      map: map,
      label: index
    });

    google.maps.event.addListener(marker, 'click', (function(marker, i) {
      
      var latitude = markersCoordinates[i].latitude.toString();
      var longitude = markersCoordinates[i].longitude.toString();

      return function() {
          infoWindow.setContent(latitude + ", " + longitude);
          infoWindow.open(map, marker);
      }
    })(marker, i)); 

  }
}

function setCenterPoint() {
  var coordinates = JSON.parse(document.getElementById('center-point').innerHTML);
  var centerPoint = {lat: coordinates[0], lng: coordinates[1]};
  return centerPoint;
}