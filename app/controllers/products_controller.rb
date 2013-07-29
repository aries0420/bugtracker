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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:notice] = "Game product has been updated."
      redirect_to @product
    else
      flash[:alert] = "Game product has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Game product has been deleted."
    redirect_to products_path
  end
end
