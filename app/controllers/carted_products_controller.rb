class CartedProductsController < ApplicationController
  def index
    if current_user.carted_products.where(status: 'carted').count == 0
      redirect_to "/comics"
    else 
      @carted_products = current_user.carted_products.where(status: 'carted')
      render 'index.html.erb'
    end
  end

  def create
    carted_product = CartedProduct.create!(
      user_id: current_user.id,
      comic_id: params[:comic_id],
      quantity: params[:quantity],
      status: 'carted'
    )
    redirect_to "/carted_products"
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.update(status: 'removed')
    redirect_to '/carted_products'
  end

end
