# frozen_string_literal: true

class StoreController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:index]

  def index
    session[:counter] = session.fetch(:counter, 0) + 1

    @counter = session[:counter]
    @products = Product.select(:id, :image_url, :title, :description, :price, :updated_at).order(:title)
  end
end
