class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.references :movies
    	t.date :show_date
    	t.references :shows
      t.timestamps null: false
    end
  end
end
