class Author < ApplicationRecord
   has_and_belongs_to_many :books

   validates :last_name, :first_name,  presence: true 
end
