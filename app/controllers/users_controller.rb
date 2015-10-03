class UsersController < ApplicationController
  
  def show
  @user = User.find(params[:id])
  @item = Item.find(params[:item_id])
  end
end
