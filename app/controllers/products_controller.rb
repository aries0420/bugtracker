class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Game product has been created."
      redirect_to @product
    else
      # nothing, yet
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
