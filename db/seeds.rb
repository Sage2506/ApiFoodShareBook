# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
d1 = Dish.create(name: "Platillo de Prueba", description: "platillo de prueba", recipe: "No hace falta")
i1 = Ingredient.create(name:"ingrediente de prueba", description: "veamos si funciona", image:"por ahora no")

DishIngredient.create(dish: d1, ingredient: i1)
