class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(params[:id])
    if @interview.save
      redirect_to interview_path(@interview)
    else
      render :new
    end
  end

  def show
    @interview = Interview.find(params[:id])
    @application = @interview.application
    @user = current_user
    @token = generate_token(@interview)
  end

  private

  def generate_token(interview)
    # Create an Access Token
    token = Twilio::JWT::AccessToken.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_API_KEY'], ENV['TWILIO_API_SECRET'], [],
        ttl: 14400,
        identity: current_user.email
    # Grant access to Video
    grant = Twilio::JWT::AccessToken::VideoGrant.new
    grant.room = interview.url_room
    token.add_grant grant
    # Serialize the token as a JWT
    token.to_jwt
  end
end

 