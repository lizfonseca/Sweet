module Countries
  class CountriesController < ApplicationController
    def index
      # variables needed to render view
      @countries = Country.all
      render :index
    end
  end
end