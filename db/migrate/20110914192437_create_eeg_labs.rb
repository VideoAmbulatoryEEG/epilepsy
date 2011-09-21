class CreateEegLabs < ActiveRecord::Migration
  def self.up
    create_table :eeg_labs do |t|
      t.string :identifier
      t.string :location

      t.references :hospital

      t.timestamps
    end
  end

  def self.down
    drop_table :eeg_labs
  end
end
