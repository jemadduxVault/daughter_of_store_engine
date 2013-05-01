class StoreAdmin::ProductsController < ApplicationController
  layout 'admin/application'
  before_filter :require_store_admin_or_admin

  def index
    @store = current_store
    @products = current_store.products.page params[:page]
  end

  def show
    @store = current_store
    @product = current_store.products.find(params[:id])
  end

  def new
    @store = current_store
    @product = Product.new
  end

  def create
    @store = current_store
    @product = Product.new(params[:product])
    if @product.save
      @store.touch
      redirect_to store_admin_products_path(@store),
                notice: "Product was successfully created."
    else
      render action: "new"
    end
  end

  def edit
    @store = current_store
    @product = current_store.products.find(params[:id])
  end

  def update
    @store = current_store
    @product = current_store.products.find(params[:id])
    if @product.update_attributes(params[:product])
      @store.touch
      redirect_to store_admin_products_path,
                notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @store = current_store
    @product = current_store.products.find(params[:id])
    if @product.destroy
      @store.touch
    end

    redirect_to store_admin_products_path,
            notice: 'Product was successfully removed.'
  end
end
