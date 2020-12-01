class CategoriesController < ApplicationController
#Import through Categories -- Export through Questions!?

    def index
        categories = Category.all
        render json: categories, except: [:created_at, :updated_at]
    end

    def show
        #is this even needed if i'm importing and creating JS objects?

        #category = Category.find_by(:id => params[:id])
        #if category
            #render json: category.questions, except: [:created_at, :updated_at]
        #else
            #render json: { message: 'Category not found'}
        #end
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
