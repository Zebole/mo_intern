class Job < ApplicationRecord
  belongs_to :organisation
  has_many :applications
end
