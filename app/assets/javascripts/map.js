function initMap() {
  var centerPoint = {lat: 51.7600070, lng: -0.0150420};
  var businessOne = {lat: 51.7638958, lng: -0.0131428};

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 14,
    mapTypeId: 'terrain',
    center: centerPoint
  });

  var marker = new google.maps.Marker({
  position: businessOne,
  map: map
});

}