class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def home
    render layout: "root_layout"
  end


  def current_user

    @user = User.find(session[:user_id])
  end

  def is_manager
    return head(:forbidden) unless current_user.manager

  end
  
end
