puts 'delete all ingredients'
Ingredient.destroy_all
puts 'seed new ingredients'
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rum")
Ingredient.create(name: "tequila")
Ingredient.create(name: "gin")
Ingredient.create(name: "tonic")
Ingredient.create(name: "coke")
Ingredient.create(name: "club soda")
puts 'done'
