class RegistrationsController < ApplicationController
  before_action :require_login, only: [:edit, :update]
  # def new
  #   # ...
  #   respond_to do |format|
  #     format.html # Renders app/views/registrations/new.html.erb
  #     format.json { render json: { message: "New registration created" } }
  #   end
  # end
  # def new
  #   @user = User.new
  # end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to root_path, notice: "Account created successfully!" }
        format.json { render json: { message: "Account created successfully!", user: @user }, status: :created }
      else
        format.html { render :new }
        format.json { render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    respond_to do |format|
      if @user.update(user_params)
        format.json { render json: { message: "Account updated successfully!", user: @user }, status: :ok }
      else
        format.json { render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity }
      end
    end
  end

  private

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :allergy_type)
  end
  
end
