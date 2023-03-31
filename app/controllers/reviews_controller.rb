class ReviewsController < ApplicationController

    def create
        review = Review.create(allowed_params)
        render json: review
         end
     
         def update
         review = Review.find(params[:id])
         review.update(allowed_params)
         render json: review
         end
     
         def destroy
         review = Review.find(params[:id])
         review.destroy
         end
     
         private
     
         def allowed_params
             params.permit(:rating,:comment,:user_id,:recipe_id)
         end
end
