class Leafies < ActiveRecord::Migration
  def change
  	create_table :leafies do |t|
  		t.string :name
  		t.string :pattern
  		t.string :fruit
  		t.string :shape
  		t.string :region
  		t.string :elevation
  		t.text :description
  	end
  end
end