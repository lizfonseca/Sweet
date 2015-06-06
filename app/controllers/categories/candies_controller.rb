module Categories
  class CandiesController < ApplicationController
    def index
      @category = Category.find(params[:category_id])
      @candies = Candy.all
      render :index
    end
  end
end