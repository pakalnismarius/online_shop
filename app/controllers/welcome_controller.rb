class WelcomeController < ApplicationController

  def welcome
    @bunch = Bunch.new
  end

  def home
    @bunch = Bunch.new
  end

  def abounb_us
    @bunch = Bunch.new
  end

  def product
    @bunch = Bunch.new
  end

  def index
    @bunch = Bunch.new
  end

  def new
    @customer = Customer.new
    @order = @customer.orders.new
    @bunch = @order.bunches.new
  end

  def create
    @customer = Customer.new(customer_params)
    @order = @customer.orders.new(order_params)
    @bunch = @order.bunches.new(bunch_params)
    if @bunch.save
      redirect_to root_path
      flash[:notice] = "Successfully created!"
    else
      redirect_to about_us_path
      #render action: 'new'
    end
  end

  private

  def bunch_params
    params.require(:bunch).permit(:order_id, :gender_for, :price, :comment, color:[])
  end

  def customer_params
    params.require(:customer).permit(:email, :phone)
  end

  def order_params
    params.require(:order).permit(:date, :address, :order_delivery_date,
                                  :comment, :total_order_sum, :from,
                                  :receiver_number, :receiver_name)
  end

end
