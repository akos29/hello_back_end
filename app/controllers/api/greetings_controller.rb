module Api
  class GreetingsController < ApplicationController
    def random
      random_greeting = Greeting.order('RANDOM()').first
      render json: { greeting: random_greeting.message }
    end
  end
end
