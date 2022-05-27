import { Controller } from '@hotwired/stimulus';
import mapboxgl from '!mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    newMarker: { type: Boolean, default: false },
  };

  static targets = ["latitude", "longitude", "container"]

  connect() {
    const isNewMarker = this.newMarkerValue
    const markers = isNewMarker
      ? [{ lat: -17.7834936, lng: -63.1820853 }]
      : this.markersValue;

    mapboxgl.accessToken = this.apiKeyValue;

    this.map = new mapboxgl.Map({
      container: this.containerTarget,
      style: 'mapbox://styles/mapbox/streets-v10',
    });
    this.addMarkersToMap(markers, isNewMarker);
    this.fitMapToMarkers(markers);
    this.map.addControl(new mapboxgl.NavigationControl());
  }

  addMarkersToMap(markers, isNewMarker = false) {
    if (isNewMarker) {
      const marker = new mapboxgl.Marker({
        draggable: true,
      })
        .setLngLat([markers[0].lng, markers[0].lat])
        .addTo(this.map);

      function onDragEnd() {
        const lngLat = marker.getLngLat();
        document.getElementById('publication_latitude').setAttribute('value', lngLat.lat)
        document.getElementById('publication_longitude').setAttribute('value', lngLat.lng);
        document
          .getElementById('publication_submit_btn')
          .classList.remove('disabled');
      }

      marker.on('dragend', onDragEnd);

    } else {
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window);
        new mapboxgl.Marker({ draggable: isNewMarker })
          .setLngLat([marker.lng, marker.lat])
          .setPopup(popup)
          .addTo(this.map);
      });
    }
  }

  fitMapToMarkers(markers) {
    const bounds = new mapboxgl.LngLatBounds()
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
