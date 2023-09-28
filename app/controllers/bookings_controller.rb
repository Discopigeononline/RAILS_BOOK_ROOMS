class BookingsController < ApplicationController
  before_action :select_room, only: %i[new create edit]
  before_action :select_booking, only: %i[edit update destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.room = @room
    @booking.user = current_user
    if @booking.save
      redirect_to room_path(@room), notice: "Succesfully booked!"
    else
      render 'rooms/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to pages_dashboard_path
  end

  private

  def select_room
    @room = Room.find(params[:room_id])
  end

  def select_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
