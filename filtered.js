function initMap(){
	var tao = {lat: -1.287147, lng:36.829182};

	var map = new google.maps.Map(document.getElementById('map'),{
		zoom:15,
		center:tao
	});

	var infoWindow = new google.maps.InfoWindow;


/*
	var marker = new google.maps.Marker({
		position:uluru,
		map:map
	})
*/

	/*TRACK USER LOCATION
	 if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };

            infoWindow.setPosition(pos);
            infoWindow.setContent('You are here');
            infoWindow.open(map);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
}*/

	xmlProducer('http:////markers.php',function(data){
		var xml = data.responseXML;
		var markers = xml.documentElement.getElementsByTagName('marker');
		Array.prototype.forEach.call(markers,function(markerElem){
			var id = markerElem.getAttribute('id');
			var destination = markerElem.getAttribute('destination');
			var route_number = markerElem.getAttribute('route_number');
			var road_used = markerElem.getAttribute('road_used');
			var price_range = markerElem.getAttribute('price_range');
			var sacco_name = markerElem.getAttribute('sacco_name');
			var point = new google.maps.LatLng(
				parseFloat(markerElem.getAttribute('latitude')),
				parseFloat(markerElem.getAttribute('longitude'))
				);

			var infoWinContent = document.createElement('div');
			var strong = document.createElement('strong');
			strong.textContent = "Destination: "+destination;
			infoWinContent.appendChild(strong);
			infoWinContent.appendChild(document.createElement('br'));


			var text = document.createElement('text');
			text.textContent = "Fare range: "+price_range;
			infoWinContent.appendChild(text);
			infoWinContent.appendChild(document.createElement('br'));

			var text = document.createElement('text');
			text.textContent = "Road used: "+road_used;
			infoWinContent.appendChild(text);
			infoWinContent.appendChild(document.createElement('br'));

			var text = document.createElement('text');
			text.textContent = "Route Number: "+route_number;
			infoWinContent.appendChild(text);
			infoWinContent.appendChild(document.createElement('br'));

			var text = document.createElement('text');
			text.textContent = "Sacco: "+sacco_name;
			infoWinContent.appendChild(text);
			infoWinContent.appendChild(document.createElement('br'));


			var marker = new google.maps.Marker({
				map: map,
				position: point,
			});

			marker.addListener('click', function(){
				infoWindow.setContent(infoWinContent);
				infoWindow.open(map,marker);
			});
		});
	});
}


function xmlProducer(url, callback){
	var request = window.ActiveXObject?
	new ActiveXObject('Microsoft.XMLHTTP'):
	new XMLHttpRequest;

	request.onreadystatechange = function(){
		if(request.readyState ==4){
			request.onreadystatechange = doNothing;
			callback(request, request.status);
		}
	};

	request.open('GET',url,true);
	request.send(null);
}

function doNothing(){}