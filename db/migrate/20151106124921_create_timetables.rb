class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.string :name
      t.integer :timetable_id
      t.datetime :timetable_date

      t.timestamps null: false
    end
  end
end
