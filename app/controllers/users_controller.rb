class UsersController < ApplicationController
  
  before_filter :authenticate_user!
  

  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    @user.update_attributes(params[:user])
    redirect_to road_defects_path
  end
end
