class PasswordResetsController < ApplicationController
    before_action :find_user_by_email, only: [:create]
    before_action :find_user_by_password_reset_token, only: [:edit, :update]

    # def validate_token
    #     @reset_password = PasswordReset.find_by!(reset_password_token: params[:reset_password_token])
    #     @success = @reset_password.token_valid?
    #     @errors = @reset_password.errors.full_messages
      
    #     respond_to do |format|
    #       if @success
    #         format.json { render json: { message: "Token is valid" }, status: :ok }
    #       else
    #         format.json { render json: { error: "Invalid token", errors: @errors }, status: :unprocessable_entity }
    #       end
    #     end
    #   end
    def validate_token
        @password_reset = PasswordReset.find_by(reset_password_token: params[:reset_password_token])
        if @password_reset.present? && @password_reset.token_valid?
          render json: { success: "Token is valid" }, status: :ok
        else
          render json: { error: "Token is invalid or has expired" }, status: :unprocessable_entity
        end
      end
      
    def new
    end
  
    def create
      @user.generate_password_reset_token
      if @user.save
        UserMailer.password_reset(@user).deliver_now
        render json: { message: "Password reset instructions sent to your email address." }, status: :ok
      else
        render json: { error: "Unable to reset password. Please check your email address and try again." }, status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def update
      if @user.update_attributes(user_params)
        @user.clear_password_reset_token
        render json: { message: "Password successfully updated." }, status: :ok
      else
        render json: { error: "Unable to update password. Please check your input and try again." }, status: :unprocessable_entity
      end
    end
  
    private
  
    def find_user_by_email
      @user = User.find_by(email: params[:email])
      render json: { error: "Email not found. Please check your input and try again." }, status: :not_found unless @user
    end
  
    def find_user_by_password_reset_token
      @user = User.find_by(password_reset_token: params[:id])
      render json: { error: "Invalid password reset token. Please check your input and try again." }, status: :not_found unless @user
    end
  
    def user_params
      params.require(:user).permit(:password, :password_confirmation)
    end
  end
  