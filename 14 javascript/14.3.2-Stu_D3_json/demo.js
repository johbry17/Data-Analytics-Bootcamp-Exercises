// Get the Roadster endpoint
roadster = 'https://api.spacexdata.com/v4/roadster';

// Fetch the JSON data and console log it
d3.json(roadster).then(function (data) {
    console.log(data);
});

// Get the capsules endpoint
capsules = 'https://api.spacexdata.com/v4/capsules';


// Fetch the JSON data and console log it
d3.json(capsules).then(function (thing) {
    console.log(thing);
});