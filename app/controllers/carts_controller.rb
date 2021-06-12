class CartsController < ApplicationController

  layout false

  def show

  end

  def destroy
    current_cart.destroy
    render :show
  end
end
