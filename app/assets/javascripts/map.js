function initMap() {
  var centerPoint = {lat: 51.5666463, lng: 0.0023584};

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    mapTypeId: 'terrain',
    center: centerPoint
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
      // debugger
    }
  }
} 


function drawMarker(markersCoordinates, map) {  
  for (var i = 0; i < markersCoordinates.length; i++) {
      var pickup = markersCoordinates[i];
      var marker = new google.maps.Marker({
        position: {lat: pickup.latitude, lng: pickup.longitude},
        map: map,
        title: pickup[0]
      });
  }
}

