class AddVenueImageToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :venue_image, :text
  end
end
