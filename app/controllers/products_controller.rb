class ProductsController < ApplicationController

  def show
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end
end
