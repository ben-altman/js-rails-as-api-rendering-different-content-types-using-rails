class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render 'birds/index.html.erb'
    # render plain: "Hello #{@birds[3].name}" # outputs string
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here' # outputs string
    # render json: { message: 'Hashes of data will get converted to JSON' } # outputs hash key = message
    # render json: ['As','well','as','arrays'] # outputs array
    # render json: @birds # outputs JS
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] } # includes more detailed nesting
    render json: { birds: birds, messages: ['Hello Birds', 'Goodbye Birds'] } # no instance variable necessary
  end
end
