class Api::V1::GreetingsController < ApplicationController
  def index
    random_message = Message.order('RANDOM()').first
    response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
    render json: { greeting: random_message }
  end
end
