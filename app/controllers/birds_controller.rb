class BirdsController < ApplicationController
    def index
        birds = Bird.all
        render json: birds
    end

    def show
        bird = Bird.find(params[:id])
        render json: bird
    rescue ActiveRecord::RecordNotFound
        render json: 'bird not found', status: :not_found
    end

    def create
        bird = Bird.create(bird_params)
        render json: bird, status: :created
    end

    private
    def bird_params
        params.permit(:name, :species)
    end
    
end
