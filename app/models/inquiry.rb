class Inquiry < ApplicationRecord

    #name messageは空白NG
  validates :name, presence: true
  validates :message, presence: true
end
