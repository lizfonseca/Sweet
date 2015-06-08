module Countries
  class CandiesController < ApplicationController
    def index
      @country = Country.find(params[:country_id])
      @candies = Candy.where(country_id: params[:country_id])

      if @candies.length == 0
        render :empty
      else
        render :index
      end
    end

    def new
      @categories = Category.all
      @countries = Country.all
      @country = Country.find(params[:country_id])
      @candy = Candy.new
    end

    def create
      @countries = Country.all
      @country = Country.find(params[:country_id])

      @candy = Candy.new
      @candy.name = params[:name]
      @candy.company = params[:company]
      @candy.image_link = params[:image_link]
      @candy.description = params[:description]
      @candy.country_id = params[:country_id]
      @candy.category_id = params[:category_id]
      @candy.discontinued = params[:discontinued]
      # byebug

      if @candy.save
        redirect_to country_candies_path
      else 
        render :new
      end
    end

  end
end