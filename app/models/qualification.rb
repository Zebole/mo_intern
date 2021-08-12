class Qualification < ApplicationRecord
  has_many :user_qualifications

  private

  def self.to_s
    self.all.map {|qualification| "#{qualification.qualification_category} - #{qualification.qualification_value}" }

  end

end
