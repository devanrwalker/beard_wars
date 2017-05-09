class Picture < ApplicationRecord
  mount_uploader :image, PhotoUploader
end
