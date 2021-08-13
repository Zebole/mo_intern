class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jobs = Job.all
    @organisations = Organisation.all
  end

  # def dashboard
  #   @my_applications = current_user.applications
  # end

  def employer_dashboard
    @my_jobs = current_user.organisation.jobs
    @my_count = current_user.organisation.jobs.count
    @my_applications = current_user.organisation.jobs.map { |job| job.applications }
    @my_applicants_size = current_user.organisation.jobs.map { |job| job.applications }.count
  end

  def applicant_dashboard
    @your_applications = current_user.applications
    @your_count = current_user.applications.count
    @user_qualifications = current_user.qualifications
  end
end
