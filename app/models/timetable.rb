class Timetable < ActiveRecord::Base
  belongs_to :gig
  belongs_to :venue
  has_many :bookings
  has_many :users, :through => :bookings

  def human_readable_date
    timetable_date.strftime('%A, %B %d %Y')
  end
end
