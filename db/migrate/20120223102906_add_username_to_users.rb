class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
		add_index :users, :username, unique: true # onwards from this usernames are really unique
  end
end
