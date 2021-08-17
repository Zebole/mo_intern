class ExperiencesController < ApplicationController

def new
    @experience = Experience.new
  end

  def create
    experience = Experience.new(experience_params)
    if experience.save
      UserExperience.create(user: current_user, experience: experience)
      redirect_to applicant_dashboard_path
    else
      render :new
    end
  end

private

  def experience_params
    params.require(:experience).permit(:previous_experience)
  end

end
