// Randomly select an episode number for Star Wars
let text = d3.select(".star-wars")
  .text(Math.floor(Math.random() * 9) + 1);

// Select the upvote and downvote buttons
let upvote = d3.select('.upvote');
let downvote = d3.select('.downvote');

// Select the counter h3 element
let counter = d3.select('h3.counter');

// Use D3 `.on` to attach a click handler for the upvote
upvote.on('click', function () {
  let count = parseInt(counter.text());
  count++;
  counter.text(count);
});

// Use d3 `.on` to attach a click handler for the downvote
downvote.on('click', function () {
  let count = parseInt(counter.text());
  count--;
  counter.text(count);
})
