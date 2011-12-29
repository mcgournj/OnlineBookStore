class Book < ActiveRecord::Base
   belongs_to :orderitem
   has_many :category
end
