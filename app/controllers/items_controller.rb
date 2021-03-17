class ItemsController < ApplicationController
  before_action :item_find, only: [:show, :edit, :update, :destroy]
  before_action :search_product, only: [:index, :search]

  def index
    @items = Item.all.order("created_at DESC")
    @all_ranks = Item.find(Like.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))
    set_item_column
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

  def search
    @results = @p.result.includes(:user)    
  end

  private

  def item_params
    params.require(:item).permit(:title, :explanation, :region_id, :genre_id, :image).merge(user_id: current_user.id)
  end

  def item_find
    @item = Item.find(params[:id])
  end

  def search_product
    @p = Item.ransack(params[:q])
  end

  def set_item_column
    @item_title = Item.select("title").distinct  # 重複なくnameカラムのデータを取り出す
  end


end
