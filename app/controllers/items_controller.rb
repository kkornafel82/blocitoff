class ItemsController < ApplicationController
  def new
   @item = Item.new
   @user = current_user
  end

  def create
    @item = current_user.items.build(item_params)
    if @item.save
      redirect_to current_user, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating Item. Please try again."
      redirect_to welcome_index_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
