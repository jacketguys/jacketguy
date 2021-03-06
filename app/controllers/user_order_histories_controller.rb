class UserOrderHistoriesController < ApplicationController

  before_action :authenticate_end_user!, only: [:show]

  def show
    @user = current_end_user
    @order_history = OrderHistory.find(params[:id])
    @product_histories = ProductHistory.where(order_history_id: @order_history)
  end

end
