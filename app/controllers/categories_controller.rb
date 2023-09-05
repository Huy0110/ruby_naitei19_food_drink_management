# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @category = Category.find_by(slug: params[:slug])
    # @cuisines = @category.cuisines.order(created_at: :desc)
    # Initialize Ransack search object
    @q = Cuisine.ransack(params[:q])
    puts "Debug params[:q]: #{params[:q]}"
    Rails.logger.debug "Debug params[:q]: #{params[:q]}"
    # Kiểm tra xem có tìm kiếm nào được thực hiện không
    if params[:q].present?
      # Nếu có tìm kiếm, lấy kết quả tìm kiếm
      @cuisines = @q.result(distinct: true)
    else
      # Nếu không có tìm kiếm, lấy tất cả các món ăn trong danh mục
      @cuisines = @category.cuisines.order(created_at: :desc)
    end
  end
end
