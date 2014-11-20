class Evergreens < ActiveRecord::Migration
  def change
  	create_table :evergreens do |t|
  		t.string :name
  		t.string :shape
  		t.string :bundle
  		t.string :conesize
  		t.string :coneshape
  		t.string :dimensions
  		t.string :elevation
  		t.string :region
  		t.boolean :stalk
  		t.text :description
  	end
  end
end
