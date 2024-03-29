Role.create(name:'Admin')
Role.create(name:'Asistant')
Role.create(name:'Tester')
Role.create(name:'Registered')
Role.create(name:'Unregistered')

User.create(email: "german_sjj4@hotmail.com",password_digest: BCrypt::Password.create('25061996sayan5'), role_id: 1)
User.create(email: "paulinahumaran1@gmail.com",password_digest: BCrypt::Password.create('teAmoBarryAllen'))

u1 = User.find(1)

m1 = Measure.create(name: "Piezas", group: 3, equivalent: 1)
m2 = Measure.create(name: "Gramos", group: 1, equivalent: 1)
m3 = Measure.create(name: "Kilogramos", group: 1, equivalent: 1000)
m4 = Measure.create(name: "Mililitros", group: 2, equivalent: 1)
m5 = Measure.create(name: "Litros", group: 2, equivalent: 1000)
m6 = Measure.create(name: "Cucharadas", group: 2, equivalent: 14.79)
m7 = Measure.create(name: "Tazas", group: 2, equivalent: 236.588)
m8 = Measure.create(name: "Rebanadas", group: 3, equivalent: 1)

d1 = Dish.create(name: "Cochinita Pibil", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://cdn.kiwilimon.com/recetaimagen/495/th5-640x426-2200.jpg", user_id: u1.id)
d2 = Dish.create(name: "Cochinita Pibil 1", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://upload.wikimedia.org/wikipedia/commons/8/84/Cochinita_pibil_2.jpg",  user_id: u1.id)
d3 = Dish.create(name: "Cochinita Pibil 2", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Cochinita-Pibil.jpg",  user_id: u1.id)
d4 = Dish.create(name: "Cochinita Pibil 3", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://thermomix-santander.es/media/Posts/attachments/adb4527f56ebbbcff16f1a4bc13a91d3.JPG",  user_id: u1.id)
d5 = Dish.create(name: "Cochinita Pibil 4", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://upload.wikimedia.org/wikipedia/commons/3/3e/Pibil.jpg",  user_id: u1.id)
d6 = Dish.create(name: "Cochinita Pibil 5", description: "La cochinita pibil es un plato típico de la región de Yucatán en México. Antiguamente los mayas lo cocinaban en un horno subterráneo, ahora se puede preparar en un horno convencional dejando marinar toda la noche. Se sirve con cebolla encurtida con chile habanero.", recipe: "https://www.kiwilimon.com/receta/carnes-y-aves/cochinita-pibil-yucateca", image: "https://upload.wikimedia.org/wikipedia/commons/b/bb/Dakbal-bokkeum.jpg",  user_id: u1.id)

i1 = Ingredient.create(name:"hoja de plátano", description: "pasado por la flama para ablandarlo", image:"https://cdn.pixabay.com/photo/2014/09/21/06/49/banana-leaves-454713_960_720.jpg", user_id: u1.id)
i2 = Ingredient.create(name:"pierna de cerdo", description: "kilos", image:"https://cdn.pixabay.com/photo/2017/11/05/02/37/meat-2919412_960_720.png", user_id: u1.id)
i3 = Ingredient.create(name:"lomo de cerdo", description: "kilos", image:"https://upload.wikimedia.org/wikipedia/commons/2/2d/Cinta_de_lomo_de_cerdo%2C_corte_de_lomo.jpg", user_id: u1.id)

DishIngredient.create(dish: d1, ingredient: i1, quantity: 1.200, measure_id: 1)
DishIngredient.create(dish: d1, ingredient: i2, quantity: 1.400, measure_id: 7)
DishIngredient.create(dish: d1, ingredient: i3, quantity: 1.600, measure_id: 9)

DishIngredient.create(dish: d2, ingredient: i1, quantity: 1.200, measure_id: 1)
DishIngredient.create(dish: d2, ingredient: i2, quantity: 2, measure_id: 2)
DishIngredient.create(dish: d2, ingredient: i3, quantity: 16, measure_id: 3)

DishIngredient.create(dish: d3, ingredient: i1, quantity: 1.5, measure_id: 6)
DishIngredient.create(dish: d3, ingredient: i2, quantity: 2, measure_id: 5)
DishIngredient.create(dish: d3, ingredient: i3, quantity: 2.600, measure_id: 4)

DishIngredient.create(dish: d4, ingredient: i1, quantity: 3, measure_id: 6)
DishIngredient.create(dish: d4, ingredient: i2, quantity: 1.400, measure_id: 7)
DishIngredient.create(dish: d4, ingredient: i3, quantity: 4, measure_id: 8)

DishIngredient.create(dish: d5, ingredient: i1, quantity: 2, measure_id: 1)
DishIngredient.create(dish: d5, ingredient: i2, quantity: 4, measure_id: 2)
DishIngredient.create(dish: d5, ingredient: i3, quantity: 4.5, measure_id: 8)

DishIngredient.create(dish: d6, ingredient: i1, quantity: 1.5, measure_id: 1)
DishIngredient.create(dish: d6, ingredient: i2, quantity: 2, measure_id: 6)
DishIngredient.create(dish: d6, ingredient: i3, quantity: 2, measure_id: 3)


UserLikesDish.create(user: u1, dish: d1)

IngredientMeasure.create(ingredient_id: 1, measure_id: 1)
IngredientMeasure.create(ingredient_id: 1, measure_id: 6)

IngredientMeasure.create(ingredient_id: 2, measure_id: 7)
IngredientMeasure.create(ingredient_id: 2, measure_id: 2)
IngredientMeasure.create(ingredient_id: 2, measure_id: 5)
IngredientMeasure.create(ingredient_id: 2, measure_id: 6)

IngredientMeasure.create(ingredient_id: 3, measure_id: 9)
IngredientMeasure.create(ingredient_id: 3, measure_id: 3)
IngredientMeasure.create(ingredient_id: 3, measure_id: 4)
IngredientMeasure.create(ingredient_id: 3, measure_id: 8)

pt1 = PermissionType.create(name: "Dishes")
pt2 = PermissionType.create(name: "Ingredients")
pt3 = PermissionType.create(name: "Users")
pt4= PermissionType.create(name: "Roles")
pt5 = PermissionType.create(name: "Permissions")
pt6 = PermissionType.create(name: "Navigation")
pt7 = PermissionType.create(name:"Measures")

Permission.create(name:"create", description:"permission to create dishes", permission_type_id: pt1.id)
Permission.create(name:"edit", description:"permission to edit dishes", permission_type_id: pt1.id)
Permission.create(name:"delete", description:"permission to delete dishes", permission_type_id: pt1.id)
Permission.create(name:"create", description:"permission to create ingredients", permission_type_id: pt2.id)
Permission.create(name:"edit", description:"permission to edit ingredients", permission_type_id: pt2.id)
Permission.create(name:"delete", description:"permission to delete ingredients", permission_type_id: pt2.id)
Permission.create(name:"create", description:"permission to create measures", permission_type_id: pt7.id)
Permission.create(name:"edit", description:"permission to edit measures", permission_type_id: pt7.id)
Permission.create(name:"delete", description:"permission to delete measures", permission_type_id: pt7.id)
