class UserQualificationsController < ApplicationController

  def new
    @user_qualification = UserQualification.new
  end

end
