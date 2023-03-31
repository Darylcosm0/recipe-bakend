# Application behaviour
This backend application requires the client to be logged in to use it.When logged in:
1.They can view all the recipes in the database -done
2.They can view a single recipe by id -done
3.They can view all the recipes that they have created -done
4.They can search for a recipe -done
5.They can sort a recipe by one of their properties eg. newest -done
6.They can create a new recipe -done
7.They can update recipe information -done
8.They can delete  a recipe -done
9.They can add a new ingredient  -done
10.They can delete an ingredient -done
11.They can add an allergy -done
12.They can delete an allergy -done
13.They can add a label to a recipe -done
14.They can remove a label from a recipe -done
15.They add a review to a recipe -done
16.They delete a review -done
17.They can edit a review -done 

# Pseudo-code
Routes 
1. resources :recipes 
2. resources :ingredients only:[:create,:destroy]
3. rescources :allergys only:[:create,:destroy]
3. get "/search", to: "recipes#search"
4. get "/sort", to: "recipes#sort"
5. resources :user_recipes only:[:create,:destroy]


Models
1. Recipe
-belongs_to :user
- has_many :ingredients
- has_many :allergys
- has_many :user_recipes
- has_many :users, through: :user_recipes

2. Ingredient
- belongs_to :recipe

3. Allergy
- belongs_to :user

4. User_recipe
- belongs_to :user
- belongs_to :recipe



Tables
1. recipes
-title
-instructions
-description
-cuisine
-recipe_image
-user_id

2. ingredients
-name
-recipe_id
-quantity
-measurement-unit
-calories

3. allergys
-name
-user_id

4. user_recipes
- user_id
- recipe_id

Controllers

RecipeController
methods:
1. index
2. show
3. destroy
4. update
5. create
6. sort
7. search

IngredientController
1. create 
2. delete

AllergyController
1. create
2. delete

UserRecipesController
1. create
2. delete


