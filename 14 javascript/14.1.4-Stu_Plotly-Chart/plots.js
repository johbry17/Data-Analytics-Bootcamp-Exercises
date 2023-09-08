// Copy over the variables from the previous activity
// Create a variable called 'name' that holds your name in a string
var name = "Bryan";

// Create another variable called 'title' using a string template to say "<your name>'s First Plotly Chart"
var title = `${name}'s First Plotly Chart`;

// Create an array called 'books' of your favorite book titles
var books = ['LOTR', 'Peace', 'Lamb', 'Good Omens']

// Create another array called 'timesRead' of how many times you've read each respective book
var timesRead = ['25', '3', '5', '6']


// Assign `x` and `y` values for the Plotly trace object
let trace1 = {
  x: books,
  y: timesRead,
  type: 'bar'
};

// Leave the code below unchanged
let data = [trace1];

let layout = {
  title: title
};

Plotly.newPlot("plot", data, layout);