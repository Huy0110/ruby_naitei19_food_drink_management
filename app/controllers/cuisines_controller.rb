# app/controllers/cuisines_controller.rb
class CuisinesController < ApplicationController
  def index
    @q = Cuisine.ransack(params[:q])
    @cuisines = if params[:q].present?
                  @q.result(distinct: true)
                else
                  Cuisine.all
                end
  end

  def show
    @cuisine = Cuisine.find_by(slug: params[:slug])
  end
end
