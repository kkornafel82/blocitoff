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
    @item = @user.items.find(params[:id])
    if @item.destroy
      flash[:notice] = "Nice job! Item removed."
    else
      flash[:error] = "Item couldn't be deleted. Try again."
    end

    respond_to do |format|
       format.html
       format.js
    end
  end


  private

  def item_params
    params.require(:item).permit(:name)
  end

end
