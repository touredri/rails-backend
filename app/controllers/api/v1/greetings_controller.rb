# frozen_string_literal: true

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        random_message = Message.order('RANDOM()').first
        response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3001'
        render json: { greeting: random_message }
      end
    end
  end
end
