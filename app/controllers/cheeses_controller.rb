class CheesesController < ApplicationController

    def index
        cheeses = Cheese.all
        render json: cheeses
    end

    def order
        ordered_cheeses = Cheese.order(:name)
        render json: ordered_cheeses
    end

    def limit_2
        limited_cheeses = Cheese.limit(2)
        render json: limited_cheeses
    end

end
