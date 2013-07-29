class ProductsController < ApplicationController
  before_filter :find_product, :only => [:show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
    if @product.update_attributes(params[:product])
      flash[:notice] = "Game product has been updated."
      redirect_to @product
    else
      flash[:alert] = "Game product has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = "Game product has been deleted."
    redirect_to products_path
  end

  private
    def find_product
      @product = Product.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The game product you were looking for could not be found."
      redirect_to products_path
    end
end
