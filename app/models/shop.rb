class Shop < ApplicationRecord

  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy
end

