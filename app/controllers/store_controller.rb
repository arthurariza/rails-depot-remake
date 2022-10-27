class StoreController < ApplicationController
  def index
    @products = Product.select(:id, :image_url, :title, :description, :price).order(:title)
  end
end
