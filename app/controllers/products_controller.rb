class ProductsController < ApplicationController 
   
  def index
    @products = Product.all.order(created_at: :desc)
    @review = Review.new
  end

  def show
    @product = Product.find params[:id]
  end
end
