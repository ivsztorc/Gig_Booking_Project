class Timetable < ActiveRecord::Base
  belongs_to :gig
  belongs_to :venue
  has_many :bookings
  has_many :users, :through => :bookings

  def human_readable_date
    timetable_date.strftime('%A, %B %d %Y')
  end

  def currently_booked
    Booking.where(timetable_id: id).count
  end

  

  def max_capacity
    venue.try(:capacity)
  end


  def availability(id)
    max_capacity - currently_booked
  end


end
