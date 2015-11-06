class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.integer :gig_id

      t.timestamps null: false
    end
  end
end
