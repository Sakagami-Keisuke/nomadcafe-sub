class ShopsController < ApplicationController
  # before_action :set_shop, except: [:index,:show]

  def top
    if user_signed_in?
      @user = User.find_by(id: current_user.id)
    else 
    end
  end

  def index
    @shops = Shop.all.includes(:images)


  end

  def show
    @shop =Shop.find(params[:id])
    @image = @shop.images.includes(:shop)
    @comment = Comment.new
    @comments = @shop.comments.includes(:user)
    
  end


  def new
    @shop = Shop.new
    @shop.images.build
  end

  def create
    Shop.create(shop_params)
    redirect_to  shops_path
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to  shops_path
  end
  def update
    shop = Shop.find(params[:id])
    shop.update(shop_params)
    redirect_to  shops_path
  end


  
end


private
def shop_params
  params.require(:shop).permit(:name, :address, :mood, :price, :power, :open_time, :close_time, :holiday, :latitude, :longitude,images_attributes: [:src, :shop_id, :created_at, :update_at])
end



# def set_shop
#   @shop = Shop.find(params[:id])
# end