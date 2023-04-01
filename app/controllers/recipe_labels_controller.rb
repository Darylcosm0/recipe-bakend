class RecipeLabelsController < ApplicationController
    def create 
        recipe_label = RecipeLabel.create(allowed_params)
        render json: recipe_label
        end
      
        def destroy 
          recipe_label = RecipeLabel.find_by(recipe_id: params[:recipe_id], label_id:params[:label_id])
          recipe_label.destroy
        end
      
        private
        def allowed_params
          params.permit(:recipe_id,:label_id)
        end
end
