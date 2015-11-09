class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :timetable_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
