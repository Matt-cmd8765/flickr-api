class StaticPagesController < ApplicationController

  def index
    stripe = Rails.application.credentials.stripe

    flickr = Flickr.new stripe.values[0], stripe.values[1]

    @pics = flickr.photos.search :user_id => '200229639@N07'
    puts '$$$$$$$$$$$$$$$$$'
    p @pics
    puts '$$$$$$$$$$$$$$$$$'
    server_id = @pics[0].server
    id = @pics[0].id
    secret = @pics[0].secret

    @img = "https://live.staticflickr.com/#{server_id}/#{id}_#{secret}_w.jpg"

  end
end
