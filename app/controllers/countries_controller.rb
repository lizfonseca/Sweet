class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render :index
  end
end