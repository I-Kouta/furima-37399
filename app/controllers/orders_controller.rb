class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :item_pattern, only: [:index, :create]

  def index
    @order_address = OrderAddress.new
    redirect_to root_path if @item.order.present? || current_user.id == @item.user_id
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      pay_item
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def item_pattern
    @item = Item.find(params[:item_id])
  end

  def order_params
    params.require(:order_address).permit(:post_code, :prefecture_id, :city, :city_number, :building, :phone_number).merge(
      user_id: current_user.id, token: params[:token], item_id: params[:item_id]
    )
  end

  def pay_item
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency: 'jpy'
    )
  end
end
