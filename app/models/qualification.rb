class Qualification < ApplicationRecord
  has_many :user_qualifications

  private

  def self.labels
    self.all.map {|qualification| "#{qualification.qualification_category} - #{qualification.qualification_value}" }
  end

  def self.find_instance(string)
    category = string.split(" -").first
    value = string.split("- ").last
    self.find_by(qualification_category: category, qualification_value: value)
  end

end
