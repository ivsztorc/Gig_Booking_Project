class AddNameToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :name, :string
  end
end
