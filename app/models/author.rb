class Author < ApplicationRecord
  has_many :books  #Имя другой модели указывается во множественном числе при объявлении связи has_many
end
