class Book < ApplicationRecord
        #связи belongs_to обязаны использовать единственное число модели
   has_and_belongs_to_many :authors
   has_and_belongs_to_many :groups

  #  has_one :avatar
  #
  #  has_attached_file :avatar, styles: {
  #   thumb: '100x100>',
  #   square: '200x200#',
  #   medium: '300x300>'
  # }
  #
  # # Validate the attached image is image/jpg, image/png, etc
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates :name, :description, presence: true
end
