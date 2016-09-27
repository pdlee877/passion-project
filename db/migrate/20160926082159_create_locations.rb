class CreateLocations < ActiveRecord::Migration
  def change
  	create_table :locations do |t|
  		t.string :name

  		t.timestamp null: false
  	end
  end
end
