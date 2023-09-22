let ratings = ['G', 'PG', 'PG-13', 'R']

// Create a function to calculate the average of a metric by rating
function mean(thing, metric, rating) {
    let sum = 0;
    let counter = 0;
    for (let i = 0; i < thing.length; i++){
        if (thing[i].rating == rating) {
            sum += thing[i][metric];
            counter += 1;
        }
    }
    return sum / counter;
}


// Invoke the metric average function
function averages(metric) {
    
    results = []

    for (let i = 0; i < ratings.length; i++) { 
        avg = mean(films, metric, ratings[i]);
        results.push(avg);
        console.log(`Average ${metric} for ${ratings[i]}: ${avg}`);
    }

    return results;
}


// Create a function to plot the average metric by rating results
function plot (averages){
    let trace1 = {
        x: ratings,
        y: averages,
        name: 'Averages',
        type: 'bar',
    };

    let data = [trace1];

    let layout = {
        title: "Average per rating"
    };

    Plotly.newPlot("plot", data, layout)
}


// Invoke the plot creating function
// only the last plot will show on the webpage
// but the console prints results for all
plot(averages('rental_rate'));
plot(averages('length'));
plot(averages('replacement_cost'));