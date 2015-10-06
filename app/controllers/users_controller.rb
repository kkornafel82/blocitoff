class UsersController < ApplicationController
  
  def show
  @user = current_user
  @items = current_user.items
  @item = Item.new
  end



end
