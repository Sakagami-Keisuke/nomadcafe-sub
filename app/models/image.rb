class Image < ApplicationRecord
  belongs_to :shop, optional:true
end
