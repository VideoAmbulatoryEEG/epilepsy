class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.boolean :isCancelled
      t.text :comments

      t.references :patient
      t.references :user, :as => :schedular

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
