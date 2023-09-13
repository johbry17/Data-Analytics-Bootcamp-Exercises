// An array of each country's numbers
let australia = Object.values(data.australia);
let brazil = Object.values(data.brazil);
let uk = Object.values(data.uk);
let mexico = Object.values(data.mexico);
let singapore = Object.values(data.singapore);
let southAfrica = Object.values(data.southAfrica);

// Create an object that maps option values to variable names
let countryData = {
    Australia: australia,
    Brazil: brazil,
    "United Kingdom": uk,
    Mexico: mexico,
    Singapore: singapore,
    "South Africa": southAfrica
};

// Create an array of category labels
let labels = Object.keys(data.australia);

// function to create chart
function chart(country) {
    let trace = {
        labels: labels,
        values: countryData[country],
        type: 'pie',
    };

    let layout = {
        title: `2017 Government Expenditures ${country}`,
    };

   Plotly.newPlot('pie', [trace], layout);
};

// default chart
chart('Australia');

let dropdown = document.getElementById('selDataset');
dropdown.addEventListener('change', function () {
    let country = dropdown.options[dropdown.selectedIndex].value;
    chart(country);
})
