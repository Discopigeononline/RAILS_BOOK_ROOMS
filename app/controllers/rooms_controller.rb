class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @rooms = Room.all
    @rooms = Room.order(price_per_night: :asc)
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end
end
