class AllergiesController < ApplicationController
    def show
        user = User.find(params[:id])
        user_allergies = user.allergies
        render json: user_allergies
       end
    
       def create 
        user_allergy = Allergy.create(allowed_params)
        render json: user_allergy
       end
    
       def destroy 
        delete_allergy = Allergy.find(params[:id])
        delete_allergy.destroy
       end
    
       private
    
       def allowed_params
        params.permit(:name,:user_id)
       end
end
