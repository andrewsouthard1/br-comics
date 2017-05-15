class OrdersController < ApplicationController
  
  def create
    redirect_to '/orders/1'
  end

  def show
    render 'show.html.erb'
  end

end
