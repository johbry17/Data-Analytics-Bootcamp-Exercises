// Create our initial map object.
// Set the longitude, latitude, and starting zoom level/
let myMap = L.map("map").setView([39.8283, -98.5795], 5);

// Add a tile layer (the background map image) to our map.
// Use the addTo() method to add objects to our map.
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(myMap);


// Create a red circle over Dallas.
L.circle([32.7767, -96.7979], {
    color: 'red',
    fillOpacity: 0.5,
    radius: 50000,
}).addTo(myMap).bindPopup(`<b>Dallas</b>`);


// Connect a black line from NYC to Toronto.
L.polyline([[40.7128, -74.0060], [43.6532, -79.3832]], {
    color: 'black',
}).addTo(myMap).bindPopup(`<b>New York to Toronto</b>`);


// Create a purple polygon that covers the area in Atlanta, Savannah, Jacksonville, and Montgomery.
L.polygon([
    [33.7490, -84.3880],
    [32.0809, -81.0912],
    [30.3322, -81.6557],
    [32.3792, -86.3077],
], {
    color: 'green',
    fillOpacity: 0.25,
}).addTo(myMap).bindPopup(`<b>Polygon!</b>`);