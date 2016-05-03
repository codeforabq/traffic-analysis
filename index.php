<!DOCTYPE html>
<html>
    <head>
        <title>University Heights Association</title>
        <script src="//maps.googleapis.com/maps/api/js?v=3"></script>
        <script src="//code.jquery.com/jquery-latest.min.js"></script>
        <style type="text/css">
            html {
                height: 100%
            }

            body {
                height: 100%;
                margin: 0;
                padding: 0
            }

            table {
                border-collapse: collapse;
            }

            table, th, td {
                border: 1px solid black;
            }

            #mapdiv {
                height: 100%
            }
        </style>
    </head>
    <body>
        <div id="mapdiv"></div>
        <script>
            var map;
            var box;
            var infoWindow;
            function map_initialize() {
                map = new google.maps.Map(document.getElementById("mapdiv"), {
                    center: new google.maps.LatLng(35.104874, -106.627808),
                    zoom: 10,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                });

//                var latlngbounds = new google.maps.LatLngBounds();
                $.getJSON("php/locations.json", function(json1) {
                    $.each(json1, function(key, data) {

                        var latLng = new google.maps.LatLng(data.lat, data.lng);
//                        var iconImage = "";
//
//                        switch (data.year) {
//                            case "2010":
//                                iconImage = "img/red-dot.png";
//                                break;
//                            case "2011":
//                                iconImage = "img/blue-dot.png";
//                                break;
//                            case "2012":
//                                iconImage = "img/yellow-dot.png";
//                                break;
//                            case "2013":
//                                iconImage = "img/green-dot.png";
//                                break;
//                        }

                        // Create a marker and put it on the map
                        var marker = new google.maps.Marker({
//                            icon: iconImage,
                            position: latLng
//                            title: data.title + ' - Year: ' + data.year + ' - rowId: ' + data.objectid
                        });

                        var contentString = '<div id="content">' +
                            '<h1>Accident Data</h1>' +
                            '<div id="bodyContent">' +
                            '<p>Latitude: ' + data.lat + ', Longitude: ' + data.lng + '</p>' +
                            '<table><tr><th>Year</th><th># of accidents at this location</th></tr>' +
                            ((data.count2010 > 0) ? '<tr><td>2010</td><td style="text-align: center">' + data.count2010 + '</td></tr>' : '' ) +
                            ((data.count2011 > 0) ? '<tr><td>2011</td><td style="text-align: center">' + data.count2011 + '</td></tr>' : '') +
                            ((data.count2012 > 0) ? '<tr><td>2012</td><td style="text-align: center">' + data.count2012 + '</td></tr>' : '') +
                            ((data.count2013 > 0) ? '<tr><td>2013</td><td style="text-align: center">' + data.count2013 + '</td></tr>' : '') +
                            '</table>' +
                            '<p></p>' +
                            '</div>' +
                            '</div>';

                        var infowindow = new google.maps.InfoWindow({
                            content: contentString
                        });

                        marker.addListener('mouseover', function() {
                            infowindow.open(map, marker);
                        });

                        marker.addListener('mouseout', function() {
                            infowindow.close();
                        });

//                        latlngbounds.extend(latLng);
                        marker.setMap(map);
                    });
                });

                // Create a bounding box
//                map.fitBounds(latlngbounds);
//                box = new google.maps.Rectangle({
//                    bounds: latlngbounds,
//                    map: map,
//                    fillColor: "#000000",
//                    fillOpacity: 0.2,
//                    strokeWeight: 0
//                });

//                box.addListener('mouseover', showAccidentData);

                // Define an info window on the map.
//                infoWindow = new google.maps.InfoWindow();
            }

            function showAccidentData() {
                var ne = box.getBounds().getNorthEast();

                $.getJSON("php/accidents.json", function(json2) {
                    var contentString = "<strong>Accident Data</strong>";

                    $.each(json2, function(key, data) {
                        contentString += "<li>Year: " + data.title + ", # of accidents: " + data.accidents + "</li>";
                    });

                    // Set the info window's content
                    infoWindow.setContent(contentString);
                });

                // Set the info window's position.
                infoWindow.setPosition(ne);
                infoWindow.open(map);
            }

            $(document).ready(function() {
                map_initialize();
            });
        </script>
    </body>
</html>