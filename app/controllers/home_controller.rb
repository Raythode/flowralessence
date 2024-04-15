class HomeController < ApplicationController
  def index
    custom_params = {occassion_id: params[:occassion_id], product_type_id: params[:product_type_id], product_size_id: params[:product_size_id], color_id: params[:color_id]}

    @items = Product.where(is_gift: false).order('id ASC').where(custom_params.compact.reject { |k, v| v.blank? })
  end
end