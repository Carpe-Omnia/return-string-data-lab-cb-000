class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def description
    product = Product.find_by(id: params["id"])
    description = product.description
    render plain: description
  end 
  def inventory 
    product = Product.find_by(id: params["id"])
    inventory = product.inventory
    if inventory > 0 
      render plain: "true"
    else 
      render plain: "false"
    end     
  end   
end
