// Array of movie ratings
let movieScore = [4.4, 3.3, 5.9, 8.8, 1.2, 5.2, 7.4, 7.5, 7.2, 9.7, 4.2, 6.9];

// Mean is the average of all the values.
function mean(thing) {
    sum = 0.0;
    for (let i=0; i < thing.length; i++) {
        sum += thing[i];
    }
    return sum / thing.length;
}


// Variance can be found by subtracting the mean from each number in the data set,
// squaring the result, and then averaging the square differences.
function variance(thing) {
    avg = mean(thing);
    squares = [];
    for (let i=0; i < thing.length; i++) {
        squares.push((thing[i] - avg) * (thing[i] - avg));
    }
    return mean(squares)
}
// Alternate Version
// function variance(arr) {
//     let meanValue = mean(arr);
//     let total = 0;
  
//     for (let i = 0; i < arr.length; i++) {
//       total += (arr[i] - meanValue) ** 2;
//     }
//     let varianceValue = total / arr.length;
//     return varianceValue;
//   }



// Standard deviation is the square root of the variance
function std_dev(thing) {
    return Math.sqrt(variance(thing));
}


// Print to the console the Movie Statistical Analysis
function output(thing) {
    console.log("The mean is " + mean(thing));
    console.log('The variance is ' + variance(thing));
    console.log('The standard deviation is ' + std_dev(thing));
}

output(movieScore);
// Print to the console the Rainfall Statistical Analysis
let monthlyAvgRainFall = [3.03, 2.48, 3.23, 3.15, 4.13, 3.23]
output(monthlyAvgRainFall);


// Print to the console the Running Statistical Analysis
let mileRunTimes = [5.06, 4.54, 5.56, 4.40, 7.10]
output(mileRunTimes);
