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