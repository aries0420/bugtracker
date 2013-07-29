class BugsController < ApplicationController
  before_filter :find_product
  before_filter :find_bug, :only => [:show, :edit, :update, :destroy]

  def new
    @bug = @product.bugs.build
  end

  def create
    @bug = @product.bugs.build(params[:bug])
    if @bug.save
      flash[:notice] = "Bug has been created."
      redirect_to [@product, @bug]
    else
      flash[:alert] = "Bug has not been created."
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @bug.update_attributes(params[:bug])
      flash[:notice] = "Bug has been updated."
      redirect_to [@product, @bug]
    else
      flash[:alert] = "Bug has not been updated."
      render :action => "edit"
    end
  end

  private
    def find_product
      @product = Product.find(params[:product_id])
    end

    def find_bug
      @bug = @product.bugs.find(params[:id])
    end
end
