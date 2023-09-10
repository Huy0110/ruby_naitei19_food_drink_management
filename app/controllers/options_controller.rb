class OptionsController < ApplicationController
  def create
    selected_option_ids = option_params[:selected_option_ids]
    cuisine_id = option_params[:cuisine_id]
    @cuisine = Cuisine.find(cuisine_id)
    order_item_data = {
      cuisine: @cuisine,
      selected_option_ids:
    }
    session[:order] = [] if session[:order].nil?
    session[:order].push(order_item_data)
  end

  def new
    cuisine_id = params[:cuisine_id]
    @cuisine = Cuisine.find(cuisine_id)
    @option = Option.new(cuisine_id:)
    render partial: "options/form", locals: {option: @option}
  end

  private

  def option_params
    params.require(:option).permit(:cuisine_id, selected_option_ids: [])
  end
end
