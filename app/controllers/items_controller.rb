class ItemsController < ApplicationController


  def show
    @items = Item.uncached do Item.all end
    @categories = Category.all
    @item = Item.new
  end

  def new
  end

  def create
    @item= Item.create(item_params)
    flash.now[:success] = "Item added successfully"
    respond_to do |format|
      format.html redirect_to '/items/show'
      format.js
    end
  rescue
    flash.now[:danger] = 'Item not added'
    #redirect_to :back
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
  end

  def delete
  end

  private
    def item_params
      params.require(:item).permit(:id, :category_id, :name, :description, :price)
    end
end
