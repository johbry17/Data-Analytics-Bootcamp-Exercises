# import dependencies
from flask import Flask

# use Flask to create an 'app' instance
app = Flask(__name__)

# Use route decorators to define the following endpoints:
# `/`, or your **index route**: This should return a simple string, such as `"Hello, world!"` or `"Welcome to my API!"`
@app.route('/')
def hello_world():
    return 'Hello, world!'

# `/about`, which should return a string containing your **name** and **current location**
@app.route('/about')
def about():
    return 'My name is Ozymandias, King of Kings; Look on my Works, ye Mighty, and despair!'

# `/contact`, which should return a string telling visitors where to email you
@app.route('/contact')
def contact():
    return 'I do not wish to be contacted'

# Finally, add code at the end of the file that will allow you to run the server from the command line with `python app.py`.
if __name__ == '__main__':
    app.run()