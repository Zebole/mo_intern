class ApplicationsController < ApplicationController

  def index
    @applications = Application.where(user: current_user)
  end

  def show
    @application = Application.find(params[:id])
  end

  def create
    @job = Job.find(params[:job_id])
    @application = Application.new
    @application.job = @job
    @application.user = current_user
    # raise
    if @application.save
      flash[:notice] = "Your application has been submitted"
    else
      flash[:alert] = "Sorry there was an error"
    end
    if params[:redirect] == "organisations"
      redirect_to organisations_path
    else
      redirect_to jobs_path
    end
  end

  def accept
   @application = Application.find(params[:id])
   @application.update(status: true)
   @interview = Interview.new
   @interview.application_id = @application.id
   @interview.interview_date = Date.today
   @interview.save
   redirect_to employer_dashboard_path
  end

  def decline
   @application = Application.find(params[:id])
   @application.update(status: false)
   redirect_to employer_dashboard_path
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to applicant_dashboard_path
  end
end
