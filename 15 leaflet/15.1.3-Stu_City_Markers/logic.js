// Create a map object.
let myMap = L.map("map", {
  center: [37.09, -95.71],
  zoom: 5
});

// Add a tile layer.
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(myMap);

// City markers
cities = [
  { name: "New York", lat: 40.7128, lon: -74.0059, pop: "Get Outta Here!" },
  { name: "Los Angeles", lat: 34.0522, lon: -118.2437, pop: "Posh and Skid Row" },
  { name: "Houston", lat: 29.7604, lon: -95.3698, pop: "Dead Dinosaurs (Oil)" },
  { name: "Omaha", lat: 41.2524, lon: -95.9980, pop: "George Soros" },
  { name: "Chicago", lat: 41.8781, lon: -87.6298, pop: "My childhood" }
];

// Add code to create a marker for each of the following cities and to add it to the map.

cities.forEach(city => {
  marker = L.marker([city.lat, city.lon]).addTo(myMap);
  marker.bindPopup(`<b>${city.name}</b><br>Lat: ${city.lat}, Lon: ${city.lon}</br>Population: ${city.pop}`);
});
