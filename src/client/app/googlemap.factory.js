(function(){
  'use strict';
  angular.module("app")
  .factory("googlemapService",googlemapService);

    function googlemapService(){

      var mapOptions = {
              zoom: 5,
              center: new google.maps.LatLng(-10.141932,-75.245362),
              mapTypeId: google.maps.MapTypeId.TERRAIN
          }

      var googlemapService = {
          createMap : createMap,
          createMarkers : createMarkers,
          positionPoint : positionPoint
      };

      return googlemapService;

      function createMap(){
        return new google.maps.Map(document.getElementById('mapMain'), mapOptions);
      };

      function createMarkers(pos,map){
        var marker = new google.maps.Marker({
              map: map,
              position: new google.maps.LatLng(pos.latitude, pos.longitude)
          });
      };

      function positionPoint(lat,lon,map){
        var pos = new google.maps.LatLng(lat,lon);
        map.panTo(pos);
        map.setZoom(10);
      };

  }

})();
