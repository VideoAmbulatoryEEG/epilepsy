class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.integer :patients_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :isCancelled
      t.integer :schedular_id
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
