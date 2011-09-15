class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :first_name
      t.string :last_name
      t.integer :user_roles_id

      t.timestamps
      t.datetime :last_login_at # record last login timestamp
    end
  end

  def self.down
    drop_table :users
  end
end
