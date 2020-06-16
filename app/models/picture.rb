class Picture < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :album
end
