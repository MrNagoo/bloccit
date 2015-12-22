class RatingsController < ApplicationController
  def show
    @ratings = Rating.find(params[:id])
  end
end
