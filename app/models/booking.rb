class Booking < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :user
end
