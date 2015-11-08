class Venue < ActiveRecord::Base
  has_many :timetables
  has_many :gigs, :through => :timetables


  mount_uploader :venue_image, VenueImageUploader

end
