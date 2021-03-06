class Group < ApplicationRecord
   has_and_belongs_to_many :books

   validates :name, presence: true
   
   accepts_nested_attributes_for :books, allow_destroy: true
end
