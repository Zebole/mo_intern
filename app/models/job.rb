class Job < ApplicationRecord
  belongs_to :organisation
  has_many :applications
  has_one_attached :photo
end
