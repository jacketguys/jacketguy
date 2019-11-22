class ProductsController < ApplicationController

def index
	 @all_ranks = Product.find(Favorite.group(:product_id)
	 							.order('count(product_id) desc')
	 							.limit(6) .pluck(:product_id))


	 # @product = Product.find(params[:id])
   @user = current_end_user

end

def show
   @product = Product.find(params[:id])
   @reviews = @product.reviews
   @user = current_end_user
   @review = Review.new
   @arrival_stocks = @product.arrival_records.all.sum(:arrival_product)
   @history_stocks = @product.product_histories.all.sum(:order_quantity)
   @stocks = @arrival_stocks - @history_stocks
end

def search
  @user = current_end_user

  @search_params = product_search_params
  @product = Product.search(@search_params).includes(:product)

end

private

  def product_search_params
    params.fetch(:search, {}).permit(:title)
  end

end

