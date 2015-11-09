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
  end

  def create
    @booking = Booking.create(timetable_id: params[:timetable_id], user_id: current_user.id)
    redirect_to(timetable_bookings_path)
  end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    def set_booking
      @booking = booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:timetable_id, :user_id)
    end
end