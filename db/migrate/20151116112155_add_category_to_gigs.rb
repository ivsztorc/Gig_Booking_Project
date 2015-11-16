class AddCategoryToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :category, :string
  end
end
