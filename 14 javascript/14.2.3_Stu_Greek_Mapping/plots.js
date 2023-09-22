console.log(searchResults);
names = searchResults.map(thing => thing.greekName);
results = searchResults.map(thing => thing.greekSearchResults);

// Trace for the Greek Data
let trace1 = {
    x: names,
    y: results,
    name: 'Greek Gods',
    type: 'bar',
};

// Data trace array
let data = [trace1];


// Apply a title to the layout
let layout = {
    title: "Greek God Search Results",
    xaxis: {
        tickangle: -45,
    },
};


// Render the plot to the div tag with id "plot"
Plotly.newPlot("plot", data, layout);

// console.log(data);

// // Greek god names
// names = data.map(function (row){
//   return row.greekName
// });

// // Trace for the Greek Data
// let trace1 = {
//     x: data.map(row => row.greekName),
//     y: data.map(row => row.greekSearchResults),
//     type: "bar"
//   };

// // Data trace array
// let traceData = [trace1];

// // Apply the group barmode to the layout
// let layout = {
//   title: "Greek gods search results"
// };

// // Render the plot to the div tag with id "plot"
// Plotly.newPlot("plot", traceData, layout);