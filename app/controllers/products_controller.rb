class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @review = @product.reviews.new user: current_user
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

end
