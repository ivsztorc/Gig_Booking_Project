class Timetable < ActiveRecord::Base
  belongs_to :gig
  belongs_to :venue
  has_many :bookings
  has_many :users, :through => :bookings
end
