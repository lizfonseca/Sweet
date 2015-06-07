module Countries
  class CandiesController < ApplicationController
    def index
      @country = Country.find(params[:country_id])
      @candies = Candy.all
      render :index
    end
    def new
      @categories = Category.all
      @countries = Country.all
      @country = Country.find(params[:country_id])
    end
  end
end