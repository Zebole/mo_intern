class Organisation < ApplicationRecord
  belongs_to :user
  has_many :jobs
  has_one_attached :photo
end
