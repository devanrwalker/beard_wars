class Profile < ApplicationRecord
  # attr_accessor :user, :username, :profilepics, :user_id, :remote_image_url

  # has_one :user

  mount_uploader :image, ProfilePicsUploader
end
