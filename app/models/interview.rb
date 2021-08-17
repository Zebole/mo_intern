class Interview < ApplicationRecord
  belongs_to :application

  before_create :set_room_name

  # callback ActiveRecord 
  def set_room_name
    client = Twilio::REST::Client.new(ENV["TWILIO_API_KEY"], ENV["TWILIO_API_SECRET"])
    room = client.video.rooms.create(unique_name: "#{application.job.title}_#{Time.now.to_i}")
    self.url_room = room.unique_name
  end
end
