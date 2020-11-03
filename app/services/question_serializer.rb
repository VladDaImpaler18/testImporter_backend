class QuestionSerializer < ApplicationController
    
    
    def index
        questions = Question.all
        render json: questions.to_json(:include => {:question }, :except => [])
    end

    def show

    end
end