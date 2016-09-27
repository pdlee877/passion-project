class CreateTides < ActiveRecord::Migration
  def change
  	create_table :tides do |t|
  		t.string 	:name
  		t.string 	:tide_status
  		t.integer 	:tide_level
  		t.integer	:tide_station

  		t.timestamp null: false
  	end
  end
end
