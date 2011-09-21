class CreateGroupPermissions < ActiveRecord::Migration
  def self.up
    create_table :group_permissions do |t|
      t.string :name # e.g. edit_patient
      t.string :action # create, read, edit, delete
      t.string :model # patient, user, group
      t.integer :group_id      
      t.timestamps
    end
  end

  def self.down
    drop_table :group_permissions
  end
end
