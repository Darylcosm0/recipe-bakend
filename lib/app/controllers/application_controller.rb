class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :current_user

  before_action :set_default_response_format

  private

  def set_default_response_format
    request.format = :json
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    unless current_user
      render json: { error: "You must be logged in to access this resource" }, status: :unauthorized
    end
  end
end
