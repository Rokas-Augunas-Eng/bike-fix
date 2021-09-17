import mapboxgl from 'mapbox-gl'; 
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.lng, marker.lat]));
    map.fitBounds(bounds, { padding: 50, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11'
    });
    const markerElement = mapElement.dataset.marker
      if (markerElement) {
        const markers = JSON.parse(mapElement.dataset.marker);

      // Pass the element as an argument to the new marker
        markers.forEach((marker) => {
          const popup = new mapboxgl.Popup().setHTML(marker.info_window);

          // Create a HTML element for your custom marker
          const element = document.createElement('div');
          element.className = 'marker';
          element.style.backgroundImage = `url(https://icon-library.com/images/location-map-icon/location-map-icon-16.jpg)`;
          element.style.backgroundSize = 'contain';
          element.style.width = '40px';
          element.style.height = '40px';
          new mapboxgl.Marker(element)
            .setLngLat([marker.lng, marker.lat])
            .setPopup(popup)
            .addTo(map);
        });
    
    fitMapToMarkers(map, markers);
      }
  }
};

export { initMapbox };


