// Sort the data by Greek search results descending
gods = searchResults.sort(function (a, b) {
    return b.greekSearchResults - a.greekSearchResults;
});

console.log(`Greek Gods in descending order:`);
gods.forEach(function (god) {
    console.log(god.greekName);
});


// Slice the first 10 objects for plotting
cutGods = gods.slice(0, 10);
console.log(`Top Ten gods:`);
cutGods.forEach(function (god){
    console.log(god.greekName);
});


// Reverse the array to accommodate Plotly's defaults
cutGods.reverse();
console.log('Reversed Top Ten gods:');
cutGods.forEach(function (god) {
    console.log(god.greekName);
});


// Trace for the Greek Data
let trace = {
    // x: cutGods.map(god => god.greekName),
    // y: cutGods.map(god => god.greekSearchResults),
    x: cutGods.map(god => god.greekSearchResults),
    y: cutGods.map(god => god.greekName),
    name: 'Greek Gods',
    type: 'bar',
    orientation: 'h',
}


// Data array
let data = [trace];

// Apply a title to the layout
let layout = {
    title: 'Top Ten Greek Gods',
}


// Render the plot to the div tag with id "plot"
Plotly.newPlot("plot", data, layout);