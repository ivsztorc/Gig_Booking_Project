class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!


  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @booking = booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @timetable = Timetable.find(params[:timetable_id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    # binding.pry
    b=Booking.new(booking_params.merge(user_id: current_user.id))
    if b.seats_available?(params[:timetable_id])
      b.save
    else
      flash[:alert] = "This event is fully booked!"
    end
    # b.save
    # flash[:alert] = "You have booked on this gig!"
    redirect_to(timetable_bookings_path)
  end

  def update
   booking = Booking.find(params[:id])
   booking.update(booking_params)
   redirect_to(bookings_path)
 end
 

 def destroy
  booking = Booking.find(params[:id])
  booking.destroy
  redirect_to(bookings_path)
end



private
def set_booking
  @booking = booking.find(params[:id])
end

def booking_params
  params.permit(:timetable_id)
end
end
