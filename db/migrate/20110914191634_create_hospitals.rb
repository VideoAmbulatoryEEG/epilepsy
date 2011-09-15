class CreateHospitals < ActiveRecord::Migration
  def self.up
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip

      t.timestamps
    end
  end

  def self.down
    drop_table :hospitals
  end
end
