class HotelsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end
end
