class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
  end
end

#added new column to existing db with: rails generate migration AddAvatarToUser avatar:string (AddAvatar - creates add_column, ToUser - ensures to is added to User table)