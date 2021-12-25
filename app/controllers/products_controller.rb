class ProductsController < ApplicationController
  # before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
  end

  def new
    @product = Product.new
  end

end
