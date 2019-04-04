class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def description
    product = Product.find_by(id: params["id"])
    description = product.description
    render plain: description
end
