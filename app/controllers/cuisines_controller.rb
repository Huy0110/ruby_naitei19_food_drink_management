# app/controllers/cuisines_controller.rb
class CuisinesController < ApplicationController
  def index
    @q = Cuisine.ransack(params[:q])
    if params[:q].present?
      # Nếu có tìm kiếm, lấy kết quả tìm kiếm
      @cuisines = @q.result(distinct: true)
    else
      # Nếu không có tìm kiếm, lấy tất cả các món ăn trong danh mục
      @cuisines = Cuisine.all
    end
  end

  def show
    @cuisine = Cuisine.find_by(slug: params[:slug])
  end
end
