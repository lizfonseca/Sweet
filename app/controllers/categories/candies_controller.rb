module Categories
  class CandiesController < ApplicationController
    def index
      @category = Category.find(params[:category_id])
      @candies = Candy.all
      render :index
    end

    def new
      @categories = Category.all
      @countries = Country.all
      @category = Category.find(params[:category_id])
      @candy = Candy.new

      render :new
    end

    def create
      @countries = Country.all
      @category = Category.find(params[:category_id])
      @candy = Candy.new

      @candy.name = params[:name]
      @candy.company = params[:company]
      @candy.image_link = params[:image_link]
      @candy.description = params[:description]
      @candy.country_id = params[:country_id]
      @candy.category_id = params[:category_id]
      @candy.discontinued = params[:discontinued]

      if @candy.save
        redirect_to category_candies_path
      else 
        render :new
    end
    end
  end
end