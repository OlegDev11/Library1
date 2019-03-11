class Book < ApplicationRecord
        #связи belongs_to обязаны использовать единственное число модели
   has_and_belongs_to_many :authors
   has_and_belongs_to_many :groups

   mount_uploader :avatar, AvatarUploader

   validates :name, :description, :avatar, presence: true
end
