class RecipesController < ApplicationController

    def create 
        new_recipe = Recipe.create(allowed_params)
        render json: new_recipe
        #scaffold
       end
    
    def destroy 
        delete_recipe = Recipe.find(params[:id])
        delete_recipe.destroy
    end

    def index
        all_recipes = Recipe.all
        render json: all_recipes,include:[:ingredients,:reviews,:labels]
    end

    def update
        update_recipe =  Recipe.find(params[:id])
        update_recipe.update(allowed_params)
        render json: update_recipe

    end

    def show
        find_recipe = Recipe.find(params[:id])
        render json: find_recipe, include: [:ingredients,:reviews,:labels]
    end

    def search
    search_response = Recipe.where('title LIKE ? OR  cuisine LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%")
    render json: search_response  
    end

    def sort_oldest
        sorted_recipes = Recipe.all.order(id: :desc)
        render json: sorted_recipes
    end

    def sort_newest
        sorted_recipes = Recipe.all.order(id: :asc)
        render json: sorted_recipes
    end
    
    
    private
    
    def allowed_params
        params.permit(:title,:description,:instructions,:cuisine,:recipe_image,:user_id)
    end
    
end
