module Categories
  class CategoriesController < ApplicationController
    def index
      @categories = Category.all
      render :index
    end
  end
end