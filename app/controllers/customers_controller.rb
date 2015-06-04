class CustomersController < ApplicationController
  def register
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    flash[:success] = 'Registration Successful'
    session[:uid] = @customer.id
    redirect_to orders_new_path
  rescue
    flash[:danger] = 'There was an error. Please submit form again'
    redirect_to customers_register_path
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    begin
      @customer.update_attributes(customer_params)
      flash[:success] = "Customer data successfully updated"
      redirect_to orders_new_path
    rescue
      flash[:danger] = 'User not saved!'
      redirect_to customers_edit_path
    end
  end

  def view
  end

  def delete
  end

  def show
  end

  private
    def customer_params
      params.require(:customer).permit(:id, :name, :tel_no, :email, :password, :password_confirmation, :password_digest)
    end
end
