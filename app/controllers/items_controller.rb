class ItemsController < ApplicationController
  before_action :item_find, only: [:show, :edit, :update, :destroy]
  
  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  
  def show
    @comment = Comment.new
    @comments = @item.comments.includes(:user).order("created_at DESC")
    @like = Like.new
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id), method: :get
    else
      render 'edit'
    end
  end

  def destroy
    if @item.user.id == current_user.id
      @item.destroy
      redirect_to root_path
    else
      render 'show'
    end
  end

  private

  def item_params
    params.require(:item).permit(:title, :explanation, :region_id, :genre_id, :image).merge(user_id: current_user.id)
  end

  def item_find
    @item = Item.find(params[:id])
  end

end
