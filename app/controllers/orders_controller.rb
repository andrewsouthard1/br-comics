class OrdersController < ApplicationController
  
  def create
    carted_products = current_user.carted_products.where(status: 'carted')
    sum_subtotal = 0
    sum_total = 0
    sum_tax = 0
    tax_rate = 0.09
    carted_products.each do |carted_product|
      sum_subtotal += carted_product.comic.price * carted_product.quantity
      sum_tax += carted_product.comic.price * carted_product.quantity * tax_rate
      sum_total += (carted_product.comic.price * carted_product.quantity * tax_rate) + (carted_product.comic.price * carted_product.quantity)
    end

    order = Order.new(
      user_id: current_user.id,
      total: sum_total,
      tax: sum_tax,
      subtotal: sum_subtotal
    )
    order.save

    carted_products.update_all(status: 'purchased', order_id: order.id)
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end

end
