class CategoriesController < ApplicationController


    def index
        categories = Category.all
 #       render json: categories
        render json: categories, except: [:created_at, :updated_at]
    end

    def show
        category = Category.find_by(:id => params[:id])
        #binding.pry
        if category
            render json: category.questions, except: [:created_at, :updated_at]
        else
            render json: { message: 'Category not found'}
        end
    end

    def new

    end

    def create
        category = Category.create(category_params)
        render json: category
    end

    private

    def category_params
        params.permit(:title)
    end
    
end
