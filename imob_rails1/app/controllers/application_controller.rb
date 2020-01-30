class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_authentication
  	if !logged?
  		redirect_to root_path, alert: 'Precisa estar logado!'
  	end
  end

  def logged?
  	session[:user_id].present?
  end
end
