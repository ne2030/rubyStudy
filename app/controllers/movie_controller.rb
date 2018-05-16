class MovieController < ApplicationController
    def index
        @params = params[:id]
        @number = 10
    end
end
