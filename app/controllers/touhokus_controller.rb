class TouhokusController < ApplicationController
  
  def index
    @items = Item.where(region_id: 3).order("created_at DESC")
  end

  private

  def item_params
    params.require(:item).permit(:title, :explanation, :region_id, :genre_id, :image).merge(user_id: current_user.id)
  end
end
