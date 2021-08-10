class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :organisation
  has_many :user_qualifications
  has_many :qualifications, through: :user_qualifications
  has_many :applications
end
