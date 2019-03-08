class AddAvatarToBooks < ActiveRecord::Migration[5.2]
  def self.up
    add_attachment :books, :avatar
  end

  def self.down
    remove_attachment :books, :avatar
  end
end
