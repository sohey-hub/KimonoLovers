class TyubusController < ApplicationController
  def index
    @items = Item.where(region_id: 5)
    if @items.present?
      render :index
    else
      redirect_to root_path
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :explanation, :region_id, :genre_id, :image).merge(user_id: current_user.id)
  end
end
