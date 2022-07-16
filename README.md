# _Care for Claws Animal Shelter_
### version 1.0

### Contributer
* Hans Schroeder

### The Site
* [View the raw documents on GitHub](https://github.com/hajschroeder/animal_shelter_api)
---

## Technologies Used
* HP Laptop with Windows 10
* GitBash and GitHub
* VS Code
* Ruby version 2.6.9
* Rails version 5.2.8
* RSpec version 3.11.0
* PostgreSQL
* Postman
* will_paginate

## Resources Used
1. [Ruby Documentation](https://ruby-doc.org/) 
1. [Learn How To Program](https://learnhowtoprogram.com) The curriculum for Epicodus students.
1. [The Odin Project](https://theodinproject.com) A free web resource for coding and programming.
1. [YouTube](www.youtube.com)
1. [Effective Testing with RSpec 3](https://pragprog.com/titles/rspec3/effective-testing-with-rspec-3/) by M. Marston, I. Dees

---

## Description

This is an independant project for the coding school Epicodus. It is an API for a hypothetical animal shelter. It includes pagination so that when called the API does not return the entire inventory of animals in the shelter. This was achieved by using the `will_paginate` gem, and the index within the application_controller.rb file was adjusted to only allow five results per page. 

## Setup/Installation
_Note, this will require your local device to have Ruby installed as well as PostgreSQL. Postman will be required for submitting requests to the API_
* Clone this repository to your desktop
* Open the folder saved to your desktop with VSCode (or any other IDE capable of running Ruby scripts)
* Bundle the gems by typing `gem bundle install`. 
* Open a bash terminal and run `postgres`
* Open a new bash terminal and enter `rake db:create`
* Run `rake db:migrate`
* Run `rake db:seed`
* Run `rails s` to start the rails server. 
* Navigate to Postman on your device, and follow the endpoints using the URLs and methods listed below to start making requests. 
* If the user wants to confirm that the routes and methods are all indeed working propery, then simply run `rake db:test:prepare` followed by `rspec`.
___

---


## API Endpoints

| Method       | URL | Result |
| :--- |:---| :---|
|GET | `localhost:3000/animals`| Returns a list of all animals in the database|
|GET | `localhost:3000/animals/18`| Returns all information related to animal ID=18|
|POST|`http://localhost:3000/animals?species=cat&name=Captain Smellyshoes&breed=Piano Tuner&age=49`|Adds animal to database. Name:Captain Smellyshoes, Breed: Piano Tuner, Age: 49. If POST is succesfull, returns database object for newly created animal.|
|PUT/PATCH|`http://localhost:3000/animals/23?name=MissusDreamyEyes`|Updates the name for an animal with ID=23. If PUT/PATCH is succesfull, returns database object for newly updated animal.|
|DELETE|`http://localhost:3000/quotes/38`|Deletes the animal with ID=38 from database|

## Known Bugs
While there are no current bugs with the project as assigned, there is presently an issue with a personal attempt at automation made by the developer. A rake task was written that will run `db:drop`, `db:create`, `db:migrate`, `db:test:prepare`, and `db:seed` all with the single command `rake db:reseed`. When these commands are run individually, the API works exactly as it is intended. When run using this automated task, the test for the size of the database fails (RSpec tests the length of the seed file plus the length of the FactoryBot test file), and none of the seeded data will show in Postman. While this implementation is not required for the project, the developer sees the great value of being able to automate small tasks to save time. As such, this bug will receive further attention in the future with the intent of better learning time-saving coding practices. 



## License 
[MIT](https://choosealicense.com/licenses/mit/)

## Copyright
Hans J Schroeder 2022