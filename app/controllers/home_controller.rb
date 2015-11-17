class HomeController < ApplicationController

  def welcome

  end

  def search
    case params[:option]
    when 'gigs' then redirect_to(gigs_path)
    when 'venues' then redirect_to(venues_path)
    when 'timetables' then redirect_to(timetable_path)
    when 'categories' then redirect_to(categories_path)
    when 'my bookings' then redirect_to(my_bookings_path)
    else render :welcome
  end
end
end
