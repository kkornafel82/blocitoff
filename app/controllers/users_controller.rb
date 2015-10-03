class UsersController < ApplicationController
  
  def show
  @user = current_user
  #@item = Item.find(params[:item_id])
  end
end
