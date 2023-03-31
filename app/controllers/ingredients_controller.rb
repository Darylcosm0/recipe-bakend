class IngredientsController < ApplicationController

    def create 
        recipe_ingredient = Ingredient.create(allowed_params)
        render json: recipe_ingredient
    end
    
    def destroy
        delete_ingredient = Ingredient.find(params[:id])
        delete_ingredient.destroy
    end

   
    private
       
    def allowed_params
        params.permit(:name,:recipe_id,:quantity,:measurement_unit,:calories)
    end
   

end
