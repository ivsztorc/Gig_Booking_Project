class Gig < ActiveRecord::Base
  has_many :timetables
  has_many :venues, :through => :timetables

  mount_uploader :gig_image, GigImageUploader

  # @timetable.gig.name
  # @timetable.venue.name

  end
# end
