class CategoriesController < ApplicationController


    def index
        categories = Category.all
        render json: categories
#        render json: categories.to_json(:include => {
#            :category => {:only => :title}
#        }, :exclude => [])
    end

    def show
        category = Category.find_by(:id => params[:id])
        render json: category
    end

    def new

    end

    def create

    end


end
