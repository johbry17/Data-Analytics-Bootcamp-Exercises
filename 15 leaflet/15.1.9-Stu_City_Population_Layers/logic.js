// A function to determine the marker size based on the population
function markerSize(population) {
  return Math.sqrt(population) * 50;
};

// Define arrays to hold the created city and state markers.
let cityMarkers = [];
let stateMarkers = [];

// Loop through locations, and create the city and state markers.
for (let i = 0; i < locations.length; i++) {
  // Set the marker radius for the state by passing the population to the markerSize() function.
  stateMarkers.push(
    L.circle(locations[i].coordinates, {
      fillOpacity: 0.75,
      color: "black",
      fillColor: "white",
      radius: markerSize(locations[i].state.population)
    }).bindPopup(`<b>${locations[i].state.name}</b><br>Population: ${locations[i].state.population.toLocaleString()}`)
  );

  // Set the marker radius for the city by passing the population to the markerSize() function.
  cityMarkers.push(
    L.circle(locations[i].coordinates, {
      stroke: false,
      fillOpacity: 0.75,
      color: "green",
      fillColor: "green",
      radius: markerSize(locations[i].city.population)
    }).bindPopup(`<b>${locations[i].city.name}</b><br>Population: ${locations[i].city.population.toLocaleString()}`)
  );
};

// Create the base layers.
let street = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
});

let topo = L.tileLayer('https://{s}.tile.opentopomap.org/{z}/{x}/{y}.png', {
	attribution: 'Map data: &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, <a href="http://viewfinderpanoramas.org">SRTM</a> | Map style: &copy; <a href="https://opentopomap.org">OpenTopoMap</a> (<a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA</a>)'
});


// Create two separate layer groups: one for the city markers and another for the state markers.
let cities = L.layerGroup(cityMarkers);
let states = L.layerGroup(stateMarkers);

// Create a baseMaps object to contain the streetmap and the topomap.
let baseMaps = {
  "Street Map": street,
  "Topographic Map": topo,
};

// Create an overlayMaps object to contain the "State Population" and "City Population" layers
let overlayMaps = {
  "City Population": cities,
  "State Population": states,
};

// Modify the map so that it has the streetmap, states, and cities layers
let myMap = L.map("map", {
  center: [
    37.09, -95.71
  ],
  zoom: 5,
  layers: [street, cities, states],
});

// Create a layer control that contains our baseMaps and overlayMaps, and add them to the map.
L.control.layers(baseMaps, overlayMaps, {collapsed: false}).addTo(myMap);