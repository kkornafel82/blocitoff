class ItemsController < ApplicationController
  def new
   @item = Item.new
  end

  def create
    @item = Item.new(params.require(:item).permit(:name))
    if @item.save
      redirect_to @item, notice: "Item was saved successfully."
    else
      flash[:error] = "Error creating Item. Please try again."
      render :new
    end
  end

end
