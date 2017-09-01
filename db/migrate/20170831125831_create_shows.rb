class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
    	t.time :show_time_start
    	t.time :show_time_end
    	t.string :show_name
      t.timestamps null: false
    end
  end
end
