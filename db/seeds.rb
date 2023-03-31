# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding..."
Recipe.create(title:"Beef stew",
              description:"is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              instructions:"Add heayradejeakjavnnafj aeeeeeeeeeeekaae a iueafeafufea",
              cuisine:"Kenyan",
              recipe_image:"https://deajfeja.com",
              user_id:1)
# Recipe.create(title:"",description:"",instructions:"",cuisine:"",recipe_image:"",user_id:)
# Recipe.create(title:"",description:"",instructions:"",cuisine:"",recipe_image:"",user_id:)
# Recipe.create(title:"",description:"",instructions:"",cuisine:"",recipe_image:"",user_id:)
# Recipe.create(title:"",description:"",instructions:"",cuisine:"",recipe_image:"",user_id:)

#create Ingredients
Ingredient.create(name:"Onion",recipe_id:1,quantity:2,measurement_unit:"pieces",calories:100)
Ingredient.create(name:"Beef",recipe_id:1,quantity:2,measurement_unit:"kg",calories:50)
Ingredient.create(name:"Olive oil",recipe_id:1,quantity:100,measurement_unit:"ml",calories:200)
Ingredient.create(name:"Pepper",recipe_id:1,quantity:30,measurement_unit:"grams",calories:150)
Ingredient.create(name:"Salt",recipe_id:1,quantity:20,measurement_unit:"grams",calories:90)
#create Recipe

#create UserRecipe
# UserRecipe.create(user_id:"1",recipe_id:"1")
# # UserRecipe.create(user_id:"",recipe_id:"")
# # UserRecipe.create(user_id:"",recipe_id:"")
# # UserRecipe.create(user_id:"",recipe_id:"")
# # UserRecipe.create(user_id:"",recipe_id:"")

# #create Allergies
Allergy.create(name:"Peanuts",user_id:1)
Allergy.create(name:"Lactose",user_id:1)
Allergy.create(name:"Chilli",user_id:1)
# Allergy.create(name:"",user_id:1)
# Allergy.create(name:"Peanutes",user_id:1)

Label.create(name:"Highly Spicy",color:"red")
Label.create(name:"Mildly Spicy",color:"blue")
Label.create(name:"Moderately Spicy",color:"green")
Label.create(name:"Alcoholic",color:"pink")
Label.create(name:"Caffeinated",color:"brown")



puts "Done seeding!"