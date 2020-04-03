class Shop < ApplicationRecord

  has_many :images, dependent: :destroy
 
end

