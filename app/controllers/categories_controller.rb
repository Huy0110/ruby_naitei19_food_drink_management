# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find_by(slug: params[:slug])
    # Initialize Ransack search object
    @q = Cuisine.ransack(params[:q])
    @cuisines = if params[:q].present?
                  @q.result(distinct: true)
                else
                  @category.cuisines.order(created_at: :desc)
                end
  end
end
