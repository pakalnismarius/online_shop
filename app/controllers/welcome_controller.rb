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
    @bunch = Bunch.find(1)
  end

  def create
    @bunch = Bunch.new(bunch_params)
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
    params.require(:bunch).permit(:order_id, :gender_for, :comment, color:[])
  end

end
