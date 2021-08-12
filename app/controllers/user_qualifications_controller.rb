class UserQualificationsController < ApplicationController

  def new
    @user_qualification = UserQualification.new
  end

  def create
    qualification = Qualification.find_instance(params[:user_qualification][:qualification])
    UserQualification.create(user: current_user, qualification: qualification)
    redirect_to applicant_dashboard_path
  end

end
