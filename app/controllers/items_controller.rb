class ItemsController < ApplicationController
  def new
   @item = Item.new
   @user = current_user
  end

  def create
    @user = current_user
    @item = Item.new
    if @item.save
      redirect_to @item, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating Item. Please try again."
      redirect_to welcome_index_path
    end
  end

end
