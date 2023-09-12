// An unsorted array
let numArray = [9.9, 6.1, 17.1, 22.7, 4.6, 8.7, 7.2];

// Sort the array in descending order and assign the results to a variable
descending = numArray.sort(function (a, b) {
    return b - a;
});

console.log(`The descending order is ${descending}`);


// Reverse the array order
ascending = numArray.sort(function(a, b) {
    return a - b;
});

console.log(`The ascending order is ${ascending}`)


// Slice the first five elements of the sorted array and assign to a variable
let sliced = ascending.slice(0, 5);

console.log(`The first five from ascending order are ${sliced}`);