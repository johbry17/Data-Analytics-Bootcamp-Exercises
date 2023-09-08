// Create a variable called 'name' that holds your name in a string
var name = "Bryan";

// Create another variable called 'title' using a string template to say "<your name>'s First Plotly Chart"
var title = `${name}'s First Plotly Chart`;

// Create an array called 'books' of your favorite book titles
var books = ['LOTR', 'Peace', 'Lamb', 'Good Omens']

// Create another array called 'timesRead' of how many times you've read each respective book
var timesRead = ['25', '3', '5', '6']

// Create a JavaScript object called 'myData' with four key-value pairs
// 1. name
// 2. favoriteBooks
// 3. timesRead
// 4. age
var myData = {
    name: name,
    books: books,
    timesRead: timesRead,
    age: 29,
}


// use console.log() to print 'myData' to the console. Explore the output in the Chrome Console
console.log(myData);


// BONUS: in 'myData', consolidate the 'favoriteBooks' and 'timesRead' into one key called 'books' where the value is
// another javascript object, with keys 'titles' and 'timesRead'. 
var myData = {
    name: name,
    books: {
        title: books,
        timesRead: timesRead,
    },
    age: 29,
}