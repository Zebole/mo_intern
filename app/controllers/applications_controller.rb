class ApplicationsController < ApplicationController

  def index
    @applications = Application.where(user: current_user)
  end

  def new
    @job = Job.find(params[:job_id])
    @application = Application.new
  end

  def create
    @job = Job.find(params[:job_id])
    @application = Application.new(application_params)
    @application.job = @job
    @application.user = current_user
    if @application.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def destroy
    @application = Application.find(params[:id])
    @application.destroy
    redirect_to applicant_dashboard_path
  end

  private

  def application_params
    params.require(:application).permit(:status)
  end

end
