console.log(searchResults);

// Initialized arrays
let names = []
let greekNames = []
let romanNames = []
let greekSearchResults = []
let romanSearchResults = []

// YOUR CODE HERE
// For loop to populate arrays
for (let i=0; i < searchResults.length; i++) {
    let x = searchResults[i];

    names.push(x.pair)
    greekNames.push(x.greekName)
    romanNames.push(x.romanName)
    greekSearchResults.push(x.greekSearchResults)
    romanSearchResults.push(x.romanSearchResults)
};

// Trace1 for the Greek Data
let trace1 = {
    x: names,
    y: greekSearchResults,
    name: 'Greek Gods',
    type: 'bar',

};

// Trace 2 for the Roman Data
let trace2 = {
    x: names,
    y: romanSearchResults,
    name: 'Roman Gods',
    type: 'bar',
};

// Create data array
let data = [trace1, trace2];

// Apply a title to the layout
let layout = {
    title: "Search Results, Greek vs. Roman Gods",
    bargap: 0.2,
    xaxis: {
        title: "God Names",
        tickfont: {
            size: 14, // Adjust the font size
        },
        tickangle: -45, // Adjust the angle of the tick labels (e.g., -45 degrees for a slant)
    },
  };

// Render the plot to the div tag with id "plot"
Plotly.newPlot("plot", data, layout);