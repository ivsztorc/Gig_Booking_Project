class Gig < ActiveRecord::Base
  has_many :timetables
  has_many :venues, :through => :timetables

  mount_uploader :gig_image, GigImageUploader
end
