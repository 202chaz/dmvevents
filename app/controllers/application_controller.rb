class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  private
  
  def user_not_authorized
    redirect_to root_path, notice: "You are not authorized to perform this action."
  end
end
