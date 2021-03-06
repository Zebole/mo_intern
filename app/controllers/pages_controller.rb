class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @jobs = Job.all
    @organisations = Organisation.all
    @applications = Application.all
  end

  # def dashboard
  #   @my_applications = current_user.applications
  # end

  def employer_dashboard
    @my_jobs = current_user.organisation.jobs
    @my_count = current_user.organisation.jobs.count
    @my_applications = current_user.organisation.jobs.map { |job| job.applications }.flatten
    @my_applicants_size = current_user.organisation.jobs.map { |job| job.applications }.flatten.count
    @my_interviews = current_user.applications.where(status: true).count
  end

  def applicant_dashboard
    @your_applications = current_user.applications
    @your_count = current_user.applications.count
    @user_qualifications = current_user.qualifications
    @user_experiences = current_user.experiences
    @your_status = current_user.applications.where(status: nil).count
    @your_interviews = current_user.applications.where(status: true).count
  end
end
