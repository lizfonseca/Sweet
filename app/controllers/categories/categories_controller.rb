module Categories
  class CategoriesController < ApplicationController
    def index
      # variables needed to render view
      @categories = Category.all
      render :index
    end
  end
end