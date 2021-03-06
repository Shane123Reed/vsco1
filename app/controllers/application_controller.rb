class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
 # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception
  # before_filter :allow_cross_domain_access
  #   def allow_cross_domain_access
  #       response.headers["Access-Control-Allow-Methods"] = "GET"
  #       response.headers["Access-Control-Allow-Headers"] = "Content-Type, X-Requested-With"
  #   end

 helper_method :current_user

 def current_user
 	if session[:user_id]
 		@current_user ||=User.find_by(id: session[:user_id])
 	end
 end

 def authenticate_user
 	redirect_to authentications_url unless @current_user
 end

end
