class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  # def dashboard
  #   @my_applications = current_user.applications
  # end

  def employer_dashboard
    @my_jobs = current_user.jobs
    @my_count = current_user.jobs.count
    @my_applications = current_user.jobs.applications
    @my_applicants_size = current_user.jobs.applications.count
  end

  def applicant_dashboard
    @your_applications = current_user.applications
    @your_count = current_user.applications.count
    @user_qualifications = current_user.qualifications
  end
end
