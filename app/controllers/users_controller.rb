class UsersController < ApplicationController
  def index
    authorize! :show, :my_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end

end