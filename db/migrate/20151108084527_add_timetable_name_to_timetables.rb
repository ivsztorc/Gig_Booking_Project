class AddTimetableNameToTimetables < ActiveRecord::Migration
  def change
    add_column :timetables, :timetable_name, :string
  end
end
