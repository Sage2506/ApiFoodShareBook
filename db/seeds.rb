User.create(email: "german_sjj4@hotmail.com", 
password_digest: BCrypt::Password.create('25061996sayan5'))

u1 = User.find(1)

m1 = Measure.create(name: "Piezas")
m2 = Measure.create(name: "Gramos")
m3 = Measure.create(name: "Kilogramos")
m4 = Measure.create(name: "Mililitros")
m5 = Measure.create(name: "Litros")
m6 = Measure.create(name: "Cucharadas")
m7 = Measure.create(name: "Tazas")
m8 = Measure.create(name: "Rebanadas")
m9 = Measure.create(name: "Pieza")

d1 = Dish.create(name: "Cochinita Pibil", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d2 = Dish.create(name: "Cochinita Pibil 1", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d3 = Dish.create(name: "Cochinita Pibil 2", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d4 = Dish.create(name: "Cochinita Pibil 3", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d5 = Dish.create(name: "Cochinita Pibil 4", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d6 = Dish.create(name: "Cochinita Pibil 5", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d7 = Dish.create(name: "Cochinita Pibil 6", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d8 = Dish.create(name: "Cochinita Pibil 7", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d9 = Dish.create(name: "Cochinita Pibil 8", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d0 = Dish.create(name: "Cochinita Pibil 9", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d11 = Dish.create(name: "Cochinita Pibil 10", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d12 = Dish.create(name: "Cochinita Pibil 11", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d13 = Dish.create(name: "Cochinita Pibil 12", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d14 = Dish.create(name: "Cochinita Pibil 13", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d15 = Dish.create(name: "Cochinita Pibil 14", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d16 = Dish.create(name: "Cochinita Pibil 15", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d17 = Dish.create(name: "Cochinita Pibil 16", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d18 = Dish.create(name: "Cochinita Pibil 17", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d19 = Dish.create(name: "Cochinita Pibil 18", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d10 = Dish.create(name: "Cochinita Pibil 19", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d20 = Dish.create(name: "Cochinita Pibil 20", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d21 = Dish.create(name: "Cochinita Pibil 21", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d23 = Dish.create(name: "Cochinita Pibil 22", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d24 = Dish.create(name: "Cochinita Pibil 23", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d25 = Dish.create(name: "Cochinita Pibil 24", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d26 = Dish.create(name: "Cochinita Pibil 25", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d27 = Dish.create(name: "Cochinita Pibil 27", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d28 = Dish.create(name: "Cochinita Pibil 28", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d29 = Dish.create(name: "Cochinita Pibil 29", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d30 = Dish.create(name: "Cochinita Pibil 30", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d31 = Dish.create(name: "Cochinita Pibil 31", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d32 = Dish.create(name: "Cochinita Pibil 32", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d33 = Dish.create(name: "Cochinita Pibil 33", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d34 = Dish.create(name: "Cochinita Pibil 34", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d35 = Dish.create(name: "Cochinita Pibil 35", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d36 = Dish.create(name: "Cochinita Pibil 36", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d37 = Dish.create(name: "Cochinita Pibil 37", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d38 = Dish.create(name: "Cochinita Pibil 38", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d39 = Dish.create(name: "Cochinita Pibil 39", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")
d40 = Dish.create(name: "Cochinita Pibil 40", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg")




i1 = Ingredient.create(name:"hoja de plátano", description: "pasado por la flama para ablandarlo", image:"http://www.quericavida.com/-/media/Images/QRV/que-rico/tasty-trends/plantain-leaves-naturally-wrapped-flavor-tradition/plantain-leaves-naturally-wrapped-flavor-tradition_hero.jpg")
i2 = Ingredient.create(name:"pierna de cerdo", description: "kilos", image:"http://tiendaencuba.com/media/catalog/product/cache/1/thumbnail/600x/17f82f742ffe127f42dca9de82fb58b1/1/0/10028.jpg")
i3 = Ingredient.create(name:"lomo de cerdo", description: "kilos", image:"https://okdiario.com/recetas/img/2017/04/06/lomo-de-cerdo-6.jpg")

DishIngredient.create(dish: d1, ingredient: i1, quantity: 1.200, measure_id: 1)
DishIngredient.create(dish: d1, ingredient: i2, quantity: 1.400, measure_id: 1)
DishIngredient.create(dish: d1, ingredient: i3, quantity: 1.600, measure_id: 2)


UserLikesDish.create(user: u1, dish: d1)

IngredientMeasure.create(ingredient_id: 1, measure_id: 1)
IngredientMeasure.create(ingredient_id: 1, measure_id: 2)
