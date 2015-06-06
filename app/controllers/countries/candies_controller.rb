module Countries
  class CandiesController < ApplicationController
    def index
      @country = Country.find(params[:country_id])
      @candies = Candy.all
      render :index
    end
  end
end