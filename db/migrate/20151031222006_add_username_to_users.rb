class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside of this method is converted to SQL and modifies the database, currently SQLite.
  add_column :users, :username, :string # Add a new column to table "users" called "username" of type string.
  add_index :users, :username, unique: true # First, add index for rapid lookup. Second, ensure usernames are always UNIQUE. 
  end
end
