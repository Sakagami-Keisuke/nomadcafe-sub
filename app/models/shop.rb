class Shop < ApplicationRecord

  has_many :images, dependent: :destroy
  # accepts_nested_attributes_for :images

  has_many :comments, dependent: :destroy
end

