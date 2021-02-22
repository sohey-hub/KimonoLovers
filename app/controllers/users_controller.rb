class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = Item.all
  end
end

private

  def item_params
    params.require(:item).permit(:title, :explanation, :region_id, :genre_id, :image).merge(user_id: current_user.id)
  end