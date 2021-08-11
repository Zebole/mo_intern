class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  # def dashboard
  #   @my_applications = current_user.applications
  # end

  def employer_dashboard

  end

  def applicant_dashboard

  end
end
