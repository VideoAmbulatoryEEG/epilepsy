class CreateEegTests < ActiveRecord::Migration
  def self.up
    create_table :eeg_tests do |t|
      t.integer :patients_id
      t.integer :eeg_labs_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :technicians_id
      t.string :clinical_history
      t.string :medications
      t.string :comments
      t.boolean :is_report_generated
      t.string :referring_physician

      t.timestamps
    end
  end

  def self.down
    drop_table :eeg_tests
  end
end
