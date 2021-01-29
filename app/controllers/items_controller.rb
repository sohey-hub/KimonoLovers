class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @message = Message.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
   
    @message = Message.new(text: params[:message][:text])
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    end
  end

  
  def show
    @item = Item.find(params[:id])
    @messages = Message.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to item_path(@item.id), method: :get
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
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

end
