class ProductsController < ApplicationController
  def index
    @products = Product.all
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
      flash[:alert] = "Product has not been created."
      render :action => "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
