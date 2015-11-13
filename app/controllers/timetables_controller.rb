class TimetablesController < ApplicationController
  before_action :set_timetable, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!


  def index
  #       if params[:name]
  #         @timetables = current_user.timetables.where(    )
  #       else
  #         @timetables = current_user.timetables
  #       end
    @timetables = Timetable.all
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @timetable = Timetable.find(params[:id])
  end

  def new
    @timetable = Timetable.new
  end

  def edit
  end

  def create
    @timetable = Timetable.new(timetable_params)

    respond_to do |format|
      if @timetable.save
        format.html { redirect_to @timetable, notice: 'Timetable was successfully created.' }
        format.json { render :show, status: :created, location: @timetable }
      else
        format.html { render :new }
        format.json { render json: @timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @timetable.update(timetable_params)
        format.html { redirect_to @timetable, notice: 'Timetable was successfully updated.' }
        format.json { render :show, status: :ok, location: @timetable }
      else
        format.html { render :edit }
        format.json { render json: @timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @timetable.destroy
    respond_to do |format|
      format.html { redirect_to timetables_url, notice: 'Timetable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end

    def timetable_params
      params.require(:timetable).permit(:timetable_date, :venue_id, :gig_id)
    end
end