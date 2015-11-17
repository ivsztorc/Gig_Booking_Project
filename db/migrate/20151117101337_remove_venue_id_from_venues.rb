class RemoveVenueIdFromVenues < ActiveRecord::Migration
  def change
    remove_column :venues, :venue_id, :integer
  end
end
