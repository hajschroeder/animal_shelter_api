

## API Endpoints

| Method       | URL | Result |
| :--- |:---| :---|
|GET | `localhost:3000/animals`| Returns a list of all animals in the database|
|GET | `localhost:3000/animals/18`| Returns all information related to animal ID=18|
|POST|`http://localhost:3000/animals?name=Captain Smellyshoes&breed=Piano Tuner&age=49`|Adds animal to database. Name:Captain Smellyshoes, Breed: Piano Tuner, Age: 49. If POST is succesfull, returns database object for newly created animal.|
|PUT/PATCH|`http://localhost:3000/animals/23?name=MissusDreamyEyes`|Updates the name for an animal with ID=23. If PUT/PATCH is succesfull, returns database object for newly updated animal.|
|DELETE|`http://localhost:3000/quotes/38`|Deletes the quote with ID=38 from database|