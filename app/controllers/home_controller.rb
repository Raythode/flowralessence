class HomeController < ApplicationController
  def index
    @items = Product.order('id ASC').all
  end
end