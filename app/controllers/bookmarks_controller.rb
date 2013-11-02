class BookmarksController < ActionController::Base

  def create
    if current_user
      current_user.uimages.create(url: params[:url])
      head :created
    end
  end



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