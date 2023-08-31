# Mongo Class

use classDB

db.classroom.insertOne({name: 'Mariah', age: 23, favorite_python_library: 'Seaborn', hobbies: ['Coding', 'Reading', 'Running']})
db.classroom.insertOne({name: 'Ricky', age: 34, favorite_python_library: 'Matplotlib', hobbies: ['Not Coding', 'Not Reading', 'Not Running', 'Guitar']})
db.classroom.insertOne({name: 'Srikanth', age: 28, favorite_python_library: 'Pandas', hobbies: ['Netflix', 'Guitar', 'Traveling']})
```
## B. Use find commands to get:
1. A list of everyone of a certain age.
```
db.classroom.find({age: 23})
```
2. An entry for a single person.
```
db.classroom.find({name: 'Ricky'})
```
