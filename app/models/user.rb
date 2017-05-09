class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessor :user, :username, :profilepics, :user_id, :remote_image_url
  # has_many :profiles
  # validates_presence_of :name, :username, :email, :password, :password_confirmation

  mount_uploader :profilepics, ProfilePicsUploader
end
