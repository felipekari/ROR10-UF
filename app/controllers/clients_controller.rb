class ClientsController < ApplicationController
    def count_question
        count = Client.where(name: params[:name]).count
        render json: count
    end
end