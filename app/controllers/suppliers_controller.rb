class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  def index
    @suppliers = Supplier.all
  end

  def show
  end

  def new
    @supplier = Supplier.new
    @inventories = Inventory.all
  end

  def edit
    @inventories = Inventory.all
  end

  def create
    @supplier = Supplier.create(supplier_params)
    if @supplier.save
      redirect_to @supplier
    # else
    #   @inventories = Inventory.all
    #   render :new
    end
  end

  def update
    if @supplier.update(supplier_params)
      redirect_to @supplier
    else
      @inventories = Inventory.all
      render :edit
    end
  end

  def destroy
    @supplier.destroy
    redirect_to suppliers_url
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:supplier_name)
  end



end
