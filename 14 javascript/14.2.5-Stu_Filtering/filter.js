// An array of objects
let roster = [{
  name: "Doug",
  position: "Quarterback",
  madeTeam: true
},
{
  name: "Antonio",
  position: "Tight End",
  madeTeam: true
},
{
  name: "Nick",
  position: "Kicker",
  madeTeam: false
},
{
  name: "Ereck",
  position: "Offensive Live",
  madeTeam: false
},
{
  name: "AJ",
  position: "Line Backer",
  madeTeam: true
}
];

// Create a custom function to return players who made the team
function madeIt (thing) {
  results = []
  for (let i = 0; i < thing.length; i++) {
    if (thing[i].madeTeam === true) {
      results.push(thing[i]);
    }
  }
  return results;
}

// Call the custom function with filter()
team = madeIt(roster);

// Display the results
console.log(team);

// Determine how many players made the cut
// Display the results
console.log(`Number of players that made the team: ${team.length}`)
