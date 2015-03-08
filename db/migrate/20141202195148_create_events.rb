class CreateEvents < ActiveRecord::Migration
  def change
  	create_table :events do |t|
  		t.belongs_to :user
  		t.belongs_to :tree
  		t.integer 	:longitude 
  		t.integer	:latitude
  		t.timestamps
  		
    end
  end
end
