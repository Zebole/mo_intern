class UserQualificationsController < ApplicationController

  def new
    @user_qualification = UserQualification.new
  end

  def create
    qualification = Qualification.first
    # qualification = Qualification.find_instance(params[:user_qualification][:qualification])
    # u = UserQualification.new(user: current_user)
    # u.qualification_id = qualification.id
    # u.save!
    raise
  end

end
