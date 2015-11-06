class AddVenueIdAndGigIdToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :venue_id, :integer
    add_column :timetables, :gig_id, :integer
  end
end
