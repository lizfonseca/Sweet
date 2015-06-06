class CandiesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @category = Category.find(params[:category_id])
    @candies = Candy.all
    render :index
  end
end

