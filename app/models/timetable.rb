class Timetable < ActiveRecord::Base
  belongs_to :gig
  belongs_to :venue
end
