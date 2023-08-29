# Create a Garden Database

## Instructions

* Create a new database called `gardenDB` using the mongo shell.

use gardenDB

* Create a collection called `plants` that contains the following:
  * A string field for `plantName`
  * An integer field for `yearsGrowing`
  * A Boolean field for `stillAlive`
  * An array of strings called `PlantNutrition` to store information about how best to keep the plant alive

* Insert three new documents into the collection. You can be creative with what you put in here and have some fun with it. Getting some practice using the commands is more important than accuracy of information.

db.plants.insertOne({
  plantName: "Rose",
  yearsGrowing: 3,
  stillAlive: true,
  PlantNutrition: ["Watering", "Fertilizing"]
})

db.plants.insertMany([
  {
    plantName: "Lily",
    yearsGrowing: 2,
    stillAlive: true,
    PlantNutrition: ["Sunlight", "Watering"]
  },
  {
    plantName: "Cactus",
    yearsGrowing: 5,
    stillAlive: true,
    PlantNutrition: ["Infrequent Watering", "Sandy Soil"]
  }
])

* Update the `yearsGrowing` fields for your documents so that they are one greater than their original values.

db.plants.updateMany({}, {$inc: {yearsGrowing: 1}})

* Update the `stillAlive` value for one of the documents so that it is now `false`.

db.plants.updateOne({plantName: "Rose"}, {$set: {stillAlive: false}})

* Add a new value into the `plantNutrition` array for one of the documents.

db.plants.updateOne({'plantName': 'Rose'}, {$push: {'PlantNutrition': 'thorns'}})

* Find the plant in the collection that isn't alive and delete it from the collection.

db.plants.deleteOne({'stillAlive': false})

* Drop the `plants` collection.

db.plants.drop()

* Delete the `gardenDB` database

db.dropDatabase()