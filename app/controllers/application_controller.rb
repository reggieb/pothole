class ApplicationController < ActionController::Base
  protect_from_forgery
  
  
  def after_sign_in_path_for(resource)
    if current_user.favourite_colour?
      request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    else
      edit_user_path(current_user)
    end
  end
  
end
