<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "https://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1,user-scalable=no,maximum-scale=1,width=device-width">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" href="css/leaflet.css">
    <link rel="stylesheet" href="css/qgis2web.css">
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/leaflet-search.css">
    <link rel="stylesheet" href="css/leaflet-search-vet.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

    <style>
        #map {
            width: 1619px;
            height: 866px;
        }
    </style>
    <title></title>
</head>

<body>
    <div id="map">
      
            <p id='search_headline-park'>search for park!</p>
            <p id='search_headline-vet'>search for vet!</p>
            
            <div class="speech-bubble" id="buub">
                <p id="textInBub">
                    Hello Devops!
                </p>
                <button id="btnVet">Write to vet</button>
            </div>
            <div class="msg-bubble" id="buub">
                <p id="textInBub">
                    Write your massage:
                </p>
                <input class="msg-input" type="text" value="Nimi" id="name-user">
                <input class="msg-input msg-input1" type="text" placeholder="phone number">
                <input class="msg-input msg-input1" type="text" placeholder="subject">
                <textarea rows="5" id="msg" class="msg-input msg-input1" type="text" placeholder="Massage"></textarea>
                <button id="btn-send">Send</button>
            </div>
    </div>
    <script src="js/qgis2web_expressions.js"></script>
    <script src="js/leaflet.js"></script>
    <script src="js/leaflet.rotatedMarker.js"></script>
    <script src="js/leaflet.pattern.js"></script>
    <script src="js/leaflet-hash.js"></script>
    <script src="js/Autolinker.min.js"></script>
    <script src="js/rbush.min.js"></script>
    <script src="js/labelgun.min.js"></script>
    <script src="js/labels.js"></script>
    <script src="js/leaflet-search-vet.js"></script>
    <script src="js/leaflet-search.js"></script>

    <script src="data/_2.js"></script>
    <script src="data/_1.js"></script>
    <script>
        var map = L.map('map', {
            zoomControl: true, maxZoom: 28, minZoom: 1
        }).fitBounds([[31.991930067432257, 34.737124974044676], [32.039014190720245, 34.841050829620215]]);
        var hash = new L.Hash(map);
        map.attributionControl.setPrefix('<a href="https://github.com/tomchadwin/qgis2web" target="_blank">qgis2web</a> &middot; <a href="https://leafletjs.com" title="A JS library for interactive maps">Leaflet</a> &middot; <a href="https://qgis.org">QGIS</a>');
        var autolinker = new Autolinker({ truncate: { length: 30, location: 'smart' } });
        var bounds_group = new L.featureGroup([]);
        function setBounds() {
        }
        map.createPane('pane_OpenStreetMap_0');
        map.getPane('pane_OpenStreetMap_0').style.zIndex = 400;
        var layer_OpenStreetMap_0 = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            pane: 'pane_OpenStreetMap_0',
            opacity: 1.0,
            attribution: '',
            minZoom: 1,
            maxZoom: 28,
            minNativeZoom: 0,
            maxNativeZoom: 19
        });
        layer_OpenStreetMap_0;
        map.addLayer(layer_OpenStreetMap_0);
        function pop__1(feature, layer) {
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2" id = "text_to_get_1">' + (feature.properties['Park_'] !== null ? autolinker.link(feature.properties['Park_'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, { maxHeight: 400 });
        }

        function style__1_0() {
            return {
                pane: 'pane__1',
                rotationAngle: 0.0,
                rotationOrigin: 'center center',
                icon: L.icon({
                    iconUrl: 'markers/Dog.svg',
                    iconSize: [38.0, 38.0]
                }),
                interactive: true,
            }
        }
        map.createPane('pane__1');
        map.getPane('pane__1').style.zIndex = 401;
        map.getPane('pane__1').style['mix-blend-mode'] = 'normal';
        var layer__1 = new L.geoJson(json__1, {
            attribution: '',
            interactive: true,
            dataVar: 'json__1',
            layerName: 'layer__1',
            pane: 'pane__1',
            onEachFeature: pop__1,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.marker(latlng, style__1_0(feature));
            },
        });
        bounds_group.addLayer(layer__1);
        map.addLayer(layer__1);
        function pop__2(feature, layer) {
            var popupContent = '<table>\
                    <tr>\
                        <td colspan="2" id = "text_to_get_2">' + (feature.properties['וטרינר'] !== null ? autolinker.link(feature.properties['וטרינ'].toLocaleString()) : '') + '</td>\
                    </tr>\
                    <tr>\
                        <td colspan="2" id = "text_to_get_3">' + (feature.properties['רחוב'] !== null ? autolinker.link(feature.properties['רחוב'].toLocaleString()) : '') + '</td>\
                    </tr>\
                </table>';
            layer.bindPopup(popupContent, { maxHeight: 400 });
        }

        function style__2_0() {
            return {
                pane: 'pane__2',
                rotationAngle: 0.0,
                rotationOrigin: 'center center',
                icon: L.icon({
                    iconUrl: 'markers/veterinarian.svg',
                    iconSize: [38.0, 38.0]
                }),
                interactive: true,
            }
        }
        map.createPane('pane__2');
        map.getPane('pane__2').style.zIndex = 402;
        map.getPane('pane__2').style['mix-blend-mode'] = 'normal';
        var layer__2 = new L.geoJson(json__2, {
            attribution: '',
            interactive: true,
            dataVar: 'json__2',
            layerName: 'layer__2',
            pane: 'pane__2',
            onEachFeature: pop__2,
            pointToLayer: function (feature, latlng) {
                var context = {
                    feature: feature,
                    variables: {}
                };
                return L.marker(latlng, style__2_0(feature));
            },
        });
        bounds_group.addLayer(layer__2);
        map.addLayer(layer__2);
        setBounds();


        map.addControl(new L.Control.Search({
            layer: layer__1,
            initial: false,
            hideMarkerOnCollapse: true,
            propertyName: "Park_"})
            );
          document.getElementsByClassName('search-button')[0].className +=
         ' fa fa-binoculars';
         map.addControl(new L.Control.Search({
            layer: layer__2,
            initial: false,
            hideMarkerOnCollapse: true,
            propertyName: "וטרינ"}));
          document.getElementsByClassName('search-button')[1].className +=
         ' fa fa-binoculars';
        </script>
        </script>
    <script src="data/3.js"></script>
</body>

</html>