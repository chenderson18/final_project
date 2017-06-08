class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :applications, :class_name => "ProgramApplication", :dependent => :destroy
  has_many :scholarship_applications, :dependent => :destroy

  mount_uploader :avatar, AvatarUploader
end
