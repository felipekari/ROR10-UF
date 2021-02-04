class UfsController < ApplicationController
  
  def query
    uf = Uf.find_by(date: params[:date])
    respond_to :json
    if uf.nil?
      render json: 'Value not found'
    else
      if request.headers['X-CLIENT'].present?
        Client.create(date_query: params[:date], name: request.headers['X-CLIENT'])
        render json: uf.price
      else
        render json: 'CLIENT pending'
      end
    end
  end

end
