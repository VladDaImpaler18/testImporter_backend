class QuestionsController < ApplicationController
#Import through Categories -- Export through Questions!?

    def index
        questions = Question.all
        render json: questions, except: [:updated_at, :created_at]
    end

    def show
        #is this even needed if i'm importing and creating JS objects?
        #question = Question.find_by(:question => params[:question])
        #render json: question, except: [:updated_at, :created_at]
    end

    def new

    end

    def edit
        
    end

    def destroy
        question = Question.find_by(params.permit(:question))
        if question.delete
            render json: {message: "Question successfully deleted"}
        else
            #render json: {message: "Failed"}
        end
    end

    def update

        question = Question.find_by(params.permit[:original])
        question.update(question_params);

        render json: question.to_json(:include =>{ :category => {:only => [:title]} } )

    end

    def create
        categoryInput = params.permit(:category)["category"].capitalize
        category = Category.find_or_create_by(:title => categoryInput)
        if !Question.find_by(params.permit(:question)) #new question check
            question = category.questions.build(question_params)
            question.save
            render json: question.to_json(:include =>{ :category => {:only => [:title]} } )
        else
            #render json: { error: 'Duplicate question detected. Cancelled action'}
        end
        
    end

    private

    def question_params
        params.permit(:question, :diagram, :diagram_info, :answer, dummy:[])
    end
    
end
