class Book < ApplicationRecord
   has_and_belongs_to_many :authors
   has_and_belongs_to_many :groups

   mount_uploader :avatar, AvatarUploader

   validates :name, :description, :avatar, presence: true

   accepts_nested_attributes_for :authors, allow_destroy: true
end
