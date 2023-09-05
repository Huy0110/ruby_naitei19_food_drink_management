# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find_by(slug: params[:slug])
    @cuisines = @category.cuisines
  end
end
