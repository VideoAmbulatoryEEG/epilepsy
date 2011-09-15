class CreateEegLabs < ActiveRecord::Migration
  def self.up
    create_table :eeg_labs do |t|
      t.string :identifier
      t.integer :hospitals_id
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :eeg_labs
  end
end
