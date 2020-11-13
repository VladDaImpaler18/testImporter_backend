class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions, except: [:updated_at, :created_at]
    end

    def show
        question = Question.find_by(:id => params[:id])
        render json: question, except: [:updated_at, :created_at]
    end

    def new

    end

    def create
        binding.pry
        category = params.permit(:cataegory)
    end

    private

    def question_params
        params.permit(:question, :diagram, :diagram_info, :answer, dummy:[])
    end
    
end
