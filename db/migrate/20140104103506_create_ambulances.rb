class CreateAmbulances < ActiveRecord::Migration
  def self.up
    create_table :ambulances do |t|
      t.integer :uid
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

  def self.down
    drop_table :ambulances
  end
end
