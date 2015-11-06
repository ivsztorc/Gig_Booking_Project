class Venue < ActiveRecord::Base
  has_many :timetables
  has_many :gigs, :through => :timetables
end
