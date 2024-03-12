class StaticPagesController < ApplicationController

  def index
    stripe = Rails.application.credentials.stripe

    flickr = Flickr.new stripe.values[0], stripe.values[1]

    @pics = flickr.photos.search :user_id => '200229639@N07'

    sizes = flickr.photos.getSizes :photo_id => '53578708387'

    original = sizes.find { |s| s.label == 'Original' }
    @og = original.width
  end
end
