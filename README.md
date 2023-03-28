## Hero Powers API

This is an API for managing Heroes and their associated Powers. The API allows you to create, read, update, and delete Heroes and Powers, as well as create associations between them.

# Models

The following relationships have been established:
- A Hero has many Powers through HeroPower

- A Power has many Heros through HeroPower

- A HeroPower belongs to a Hero and belongs to a Power

# Hero Model

The Hero model has the following attributes:

- name (string)
- super_name (string)

It has many Powers through HeroPower.

# Power Model
The Power model has the following attributes:

- name (string)
- description (text)

It has many Heros through HeroPower.

# HeroPower Model

The HeroPower model has the following attributes:

- strength (string) - one of the following values: 'Strong', 'Weak', 'Average'

It belongs to a Hero and belongs to a Power.

# Validations
The following validations have been added:

- HeroPower Model
strength must be one of the following values: 'Strong', 'Weak', 'Average'

- Power Model
description must be present and at least 20 characters long

# Routes
The following routes have been set up. All responses are returned in JSON format.

- Heroes
GET /heroes
Returns a list of all heroes in the database.

Response

json
Copy code
[
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel"
  },
  {
    "id": 2,
    "name": "Doreen Green",
    "super_name": "Squirrel Girl"
    },
  {
    "id": 3,
    "name": "Gwen Stacy",
    "super_name": "Spider-Gwen"
  }
]

- GET /heroes/:id
Returns the hero with the specified ID, along with their associated powers.

Response

json
Copy code
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
