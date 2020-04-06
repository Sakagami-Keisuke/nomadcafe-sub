class Image < ApplicationRecord

  # mount_uploader :src, ImageUploader
  belongs_to :shop, optional:true
end
