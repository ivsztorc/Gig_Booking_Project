class Booking < ActiveRecord::Base
	belongs_to :timetable
	belongs_to :user

	def max_capacity
		timetable.venue.capacity
	end

	def self.booked(id)
		where(timetable_id: id).count 
	end

	def availability(id)
		max_capacity - (Booking.booked(id))
	end

	def seats_available?(timetable_id)
		availability(timetable_id) > 0 
	end

end



