DogBNB is a simple Ruby on Rails project that models an "Airbnb for dog walks".
It was built as part of a database training exercise to practice ActiveRecord models, associations, and seeds.

📌 Project Description

The idea behind DogBNB is:

Dogs can be walked by different Dogsitters.

Dogsitters can walk different Dogs.

A Stroll represents a walk, linking one dog with one dogsitter, at a specific date.

Both dogs and dogsitters belong to a City, which also contains the strolls happening in it.

This structure allows easy matching of dogs and dogsitters within the same city.

🗂 Models and Relationships

City

has many dogs

has many dogsitters

has many strolls

Dogsitter

belongs to a city

has many strolls

has many dogs through strolls

Dog

belongs to a city

has many strolls

has many dogsitters through strolls

Stroll

belongs to a city

belongs to a dog

belongs to a dogsitter
