class SessionsController < ApplicationController
 
  def new
   render json: { message: "Login" }
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user[:id]
      render json: { message: "Logged in successfully!", user: user }, status: :ok
    else
      render json: { errors: "Invalid email or password" }, status: :unprocessable_entity
    end
  end

  # def destroy
  #   session[:user_id] = nil
  #   render json: { message: "Logged out!" }, status: :ok
  # end
  def destroy
    cookies[:session_token] = nil
    redirect_to login_path
  end
end

