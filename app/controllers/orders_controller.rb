class OrdersController < ApplicationController
  def show

  end

  def new
  end

  def create

  end

  def edit
  end

  def update
  end

  def delete
  end

  private
    def order_params
      params.require(:order).permit(:id, :delivery_date)
    end
end
