console.log(searchResults);

// Create a custom function to return Roman gods with more than 100 million search results
function muchoFans (thing) {
    results = [];
    for (let i = 0; i < thing.length; i++) {
        if (thing[i].romanSearchResults > 100000000) {
            results.push(thing[i]);
        }
    }
    return results;
};

// Call the custom function with filter()
thing2 = muchoFans(searchResults);
console.log(thing2);

// Trace for the Roman Data
let trace = {
    x: thing2.map(x => x.romanName),
    y: thing2.map(x => x.romanSearchResults),
    name: 'Roman Gods',
    type: 'bar',
};


// Data trace array
let data = [trace];


// Apply a title to the layout
let layout = {
    title: 'Roman God Search Results',
}


// Render the plot to the div tag with id "plot"
Plotly.newPlot("plot", data, layout)

//ALTERNATE, BETTER VERSION
// console.log(data);

// // Create a custom function to return Roman gods with more than 1 million search results
// function popular(roman) {
//   return roman.romanSearchResults > 100000000;
// }

// // Call the custom function with filter()
// let popularRomans = data.filter(popular);

// // Trace for the Roman Data
// let trace1 = {
//     x: popularRomans.map(row => row.romanName),
//     y: popularRomans.map(row => row.romanSearchResults),
//     type: "bar"
// };

// // Data trace array
// let traceData = [trace1];

// // Apply title to the layout
// let layout = {
//   title: "Popular Roman gods search results"
// };

// // Render the plot to the div tag with id "plot"
// Plotly.newPlot("plot", traceData, layout);