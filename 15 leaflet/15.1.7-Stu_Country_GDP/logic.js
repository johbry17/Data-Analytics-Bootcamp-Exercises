// Create a map object.
let myMap = L.map("map", {
  center: [15.5994, -28.6731],
  zoom: 3
});

// Add a tile layer.
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(myMap);


// Loop through the countries array.
for (let i = 0; i < countries.length; i++) {

  // set gdp variable
  let gdp = countries[i].gdp_pc;

  // Conditionals for country points
  // cc = circleColor
  let cc = 'violet';
  if (gdp >100000) {
    cc = 'yellow';
  } else if (gdp > 75000) {
    cc = 'blue';
  } else if (gdp > 50000) {
    cc = 'green';
  }

  // Adjust the radius.
  // radius = gdp * 2;
  radius = Math.sqrt(gdp) * 500

  // Add circles to the map.
  L.circle(countries[i].location, {
    color: 'black',
    fillColor: cc,
    fillOpacity: 0.6,
    radius: radius,
  }).addTo(myMap).bindPopup(`<b>${countries[i].name}</b><br>GDP per Capita: $${gdp.toFixed(2)}`);

};