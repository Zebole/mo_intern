class UsersController < ApplicationController



  def edit
    @user = User.find(params[:id])
  end


  def update
    @User = User.find(params[:id])
    @User = User.update(user_params)
    redirect_to applicant_dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:address, :city, :phone_number, :date_of_birth, :previous_experience)
  end

end
