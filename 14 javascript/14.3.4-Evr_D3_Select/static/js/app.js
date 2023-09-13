// The new student and grade to add to the table
let newGrade = ["Wash", 79];

// Use D3 to select the table
let table = d3.select('table');

// Use D3 to create a bootstrap striped table
// http://getbootstrap.com/docs/3.3/css/#table-striped
table.classed("table table-striped", true);

// Use D3 to select the table body
let body = d3.select('table tbody');

// Append one table row `tr` to the table body
let row = body.append("tr");

// Append one cell for the student name
row.append('td').text(newGrade[0]);

// Append one cell for the student grade
row.append('td').text(newGrade[1]);
