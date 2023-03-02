class GreetingsController < ApplicationController
  def index
    @greetings = Message.order('RANDOM()').first
    render json: { greetings: @greetings.message }
  end
end
