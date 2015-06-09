module Countries
  class CandiesController < ApplicationController
    def index
      # variables needed to render view
      @country = Country.find(params[:country_id])
      @candies = Candy.where(country_id: params[:country_id])
      # control flow for data
      if @candies.length == 0
        render :empty
      else
        render :index
      end
    end

    def new
      # variables needed to render view
      @categories = Category.all
      @countries = Country.all
      @country = Country.find(params[:country_id])
      @candy = Candy.new
    end

    def create
      # variables needed to render view
      @countries = Country.all
      @country = Country.find(params[:country_id])
      # variables needed to save into database
      @candy = Candy.new
      @candy.name = params[:name]
      @candy.company = params[:company]
      @candy.image_link = params[:image_link]
      @candy.description = params[:description]
      @candy.country_id = params[:country_id]
      @candy.category_id = params[:category_id]
      @candy.discontinued = params[:discontinued]
      # byebug
      # control flow for data
      if @candy.save
        redirect_to country_candies_path
      else 
        render :new
      end
    end

    def show
      @country = Country.find(params[:country_id])
      @candy= Candy.find(params[:id])

      render :show
    end

  end
end