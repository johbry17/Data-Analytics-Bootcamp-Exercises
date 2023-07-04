me = {
    "name": "Bryan",
    "age": "young",
    "hobbies": ["travel", "skiing", "biking", "hiking", "reading"],
    "daily_arise": {
        "Sunday": 10,
        "Monday": 10,
        "Tuesday": 10,
        "Wednesday": 10,
        "Thursday": 10,
        "Friday": 10,
        "Saturday": 10,
    },
}

print(f"My name is {me['name']}")
print(f"My age is '{me['age']}'")
print(f"Some of my hobbies are", ', '.join(me['hobbies']))

for key, value in me["daily_arise"].items():
    print(f"I wake up on {key} at {value}")