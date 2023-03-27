# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# create some powers
super_strength = Power.create(name: "Super Strength", description: "Gives the wielder super-human strength.")
flight = Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed.")
invisibility = Power.create(name: "Invisibility", description: "Allows the wielder to become invisible to the naked eye.")
telekinesis = Power.create(name: "Telekinesis", description: "Enables the wielder to move objects with their mind.")

# create some heroes
kamala_khan = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
doreen_green = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
gwen_stacy = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")


# associate heroes with powers
HeroPower.create(hero: kamala_khan, power: super_strength, strength: "Strong")
HeroPower.create(hero: kamala_khan, power: flight, strength: "Average")
HeroPower.create(hero: doreen_green, power: super_strength, strength: "Average")
HeroPower.create(hero: doreen_green, power: invisibility, strength: "Weak")
HeroPower.create(hero: gwen_stacy, power: flight, strength: "Strong")
HeroPower.create(hero: gwen_stacy, power: telekinesis, strength: "Average")
