class RemoveColumnsFromTimetable < ActiveRecord::Migration
  def change
    remove_column :timetables, :timetable_name, :string
    remove_column :timetables, :name, :string
    remove_column :timetables, :timetable_id, :string
  end
end
