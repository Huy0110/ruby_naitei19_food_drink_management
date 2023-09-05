# app/controllers/cuisines_controller.rb
class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find_by(slug: params[:slug])
  end
end
