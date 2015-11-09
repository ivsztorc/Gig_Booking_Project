class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!


  def index
    @bookings = booking.all
  end

  def show
    @booking = booking.find(params[:id])
  end

  def new
    @booking = booking.new
  end

  def edit
  end

  def create
    @booking = booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
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