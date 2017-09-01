class CreateJoinTableBookingsSeats < ActiveRecord::Migration
  def change
  	create_join_table :bookings, :seats do |t|
      # t.index [:candidate_id, :category_id]
      # t.index [:category_id, :candidate_id]
    end
  end
end
