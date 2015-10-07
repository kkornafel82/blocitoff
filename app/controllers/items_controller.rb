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

  def destroy
    @user = current_user
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Nice job! Item removed."
      redirect_to current_user
    else
      flash[:error] = "Item couldn't be deleted. Try again."
      redirect_to current_user
    end
  end
  

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
