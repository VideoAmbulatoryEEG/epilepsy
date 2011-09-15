class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.integer :mrn
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.date :birth_date
      t.string :gender

      t.timestamps
      t.datetime :visited_at # last visit timestamp
      t.datetime :searched_at # last search timestamp
    end
  end

  def self.down
    drop_table :patients
  end
end
