from flask import Flask, jsonify

# Dictionary of Justice League
justice_league_members = [
    {"superhero": "Aquaman", "real_name": "Arthur Curry"},
    {"superhero": "Batman", "real_name": "Bruce Wayne"},
    {"superhero": "Cyborg", "real_name": "Victor Stone"},
    {"superhero": "Flash", "real_name": "Barry Allen"},
    {"superhero": "Green Lantern", "real_name": "Hal Jordan"},
    {"superhero": "Superman", "real_name": "Clark Kent/Kal-El"},
    {"superhero": "Wonder Woman", "real_name": "Princess Diana"}
]

#################################################
# Flask Setup
#################################################
# Initialize your Flask app here
app = Flask(__name__)

#################################################
# Flask Routes
#################################################
# Complete the routes for your app here
@app.route('/')
def homepage():
    return "Find the Justice League JSON at /api/v1.0/justice-league"

@app.route('/api/v1.0/justice-league')
def justice_league():
    return jsonify(justice_league_members)


if __name__ == "__main__":
    # Create your app.run statement here
    app.run()
