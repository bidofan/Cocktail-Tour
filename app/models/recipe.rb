class Recipe < ApplicationRecord
validates :name,  :recipe, presence: true, 
length: {minimum: 6}
end
