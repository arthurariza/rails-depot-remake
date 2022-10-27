class StoreController < ApplicationController
  def index
    @products = Product.select(:id, :image_url, :title, :description, :price, :updated_at).order(:title)
  end
end
