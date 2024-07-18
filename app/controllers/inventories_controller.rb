class InventoriesController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @inventories = Inventory.all.order(created_at: :desc)    
  end


  def new
    @inventory = Inventory.new
    @suppliers = Supplier.all
  end


  def create 
    @inventory = Inventory.create(post_params)
    if @inventory.save
      redirect_to @inventory
    else 
      render 'new'
    end
  end

  def show
  end

  def edit
    @suppliers = Supplier.all
    render :new
  end

  def update
    if @inventory.update(post_params)
      redirect_to @inventory
    else
      @suppliers = Supplier.all
      render 'edit'      
    end
  end

  def destroy
    @inventory.delete
    redirect_to root_path
    
  end

  private

  def find_post
    @inventory = Inventory.find(params[:id])
  end

  def post_params
    params.require(:inventory).permit(:item_name, supplier_ids: [])
  end

end
