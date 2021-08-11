class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  # def dashboard
  #   @my_applications = current_user.applications
  # end

  def employer_dashboard
    @my_jobs = current_user.jobs
  end

  def applicant_dashboard

  end
end
