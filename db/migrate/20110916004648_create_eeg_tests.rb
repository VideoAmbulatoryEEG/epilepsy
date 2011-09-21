class CreateEegTests < ActiveRecord::Migration
  def self.up
    create_table :eeg_tests do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :clinical_history
      t.string :medications
      t.string :comments
      t.boolean :is_report_generated
      t.string :referring_physician

      t.references :patient
      t.references :user, :as => :technician
      t.references :eeg_lab

      t.timestamps
    end
  end

  def self.down
    drop_table :eeg_tests
  end
end
