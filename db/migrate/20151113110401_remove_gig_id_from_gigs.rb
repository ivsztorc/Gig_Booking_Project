class RemoveGigIdFromGigs < ActiveRecord::Migration
  def change
    remove_column :gigs, :gig_id, :integer
  end
end
