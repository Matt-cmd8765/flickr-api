class StaticPagesController < ApplicationController

  def index
    stripe = Rails.application.credentials.stripe

    flickr = Flickr.new stripe.values[0], stripe.values[1]

    if search_submitted
      @search = flickr.photos.search :user_id => params[:query].to_s
    end
  end

  private

  def search_submitted
    params[:query]
  end
end
