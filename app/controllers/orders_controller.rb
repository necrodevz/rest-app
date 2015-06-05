class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @categories = Category.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    redirect_to orders_edit_path(:id => @order.id)
  end

  def edit
    @order = Order.find(params[:id])
    @menu = Menu.find_by_menu_date(menu_select)
    @meal = meal_magic
  end

  def meal_config
    @item = Item.find(params[:item_id])
    @meal = Meal.find(params[:meal_id])
    @meal.items << @item
    redirect_to orders_edit_path(:id => params[:order_id], :meal_id => @meal.id)
  end

  def order_config
    @order = Order.find(params[:order_id])
    @meal = Meal.find(params[:meal_id])
    @order.meals << @meal
    redirect_to orders_edit_path
  end

  def update
  end

  def delete
  end

  private
    def order_params
      params.require(:order).permit(:id, :delivery_date)
    end

    def menu_select
      Time.now > Time.at_noon ? Date.tomorrow : Date.today
    end

    def meal_magic
      params[:meal_id] ? Meal.find(params[:meal_id]) : Meal.create(order_id: @order.id)
    end
end
