class JobsController < ApplicationController
  before_action :authenticate_user!, :except=>[:index, :show]
  def index
    if params[:query].present?
      sql_query = " \
      jobs.duration @@ :query \
      OR jobs.category @@ :query \
      OR jobs.deadline @@ :query \
      OR organisations.name @@ :query \
      OR organisations.city @@ :query \
      OR jobs.title @@ :query \
      "
      @jobs = Job.joins(:organisation).where(sql_query, query: "%#{params[:query]}%").reject { |job| Application.find_by(job: job, user: current_user) }
    else
      @jobs = Job.all.reject { |job| Application.find_by(job: job, user: current_user) }
    end

  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @organisation = Organisation.find(params[:organisation_id])
    @job = Job.new
  end

  def create
    @organisation = Organisation.find(params[:organisation_id])
    @job = Job.new(job_params)
    @job.organisation = @organisation
    if @job.save
      redirect_to employer_dashboard_path
    else
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job = Job.update(job_params)
    redirect_to employer_dashboard_path
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to employer_dashboard_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :salary, :duration, :category, :deadline, :photo)
  end
end
