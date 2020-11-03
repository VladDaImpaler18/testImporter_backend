class QuestionsController < ApplicationController

    def index
        questions = Question.all
        render json: questions
    end

    def show
        question = Question.find_by(:id => params[:id])
        render json: question
    end

    def new

    end

    def create

    end
end
