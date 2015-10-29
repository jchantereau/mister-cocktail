# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "ginger")


Cocktail.destroy_all
Cocktail.create(name: "mojito")
Cocktail.create(name: "Ginger Ale")
Cocktail.create(name: "Cuba Libreeeee")
Cocktail.create(name: "Vodka pure ma gueule")
