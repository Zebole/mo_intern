class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.new(organisation_params)
    @user = current_user
    @organisation.user = @user
    if @organisation.save
      redirect_to organisation_path(@organisation)
    else
      render :new
    end
  end

  def edit
    @organisation = Organisation.find(params[:id])
  end

  def update
    @organisation = Organisation.find(params[:id])
    @organisation.update(organisation_params)
    redirect_to organisations_path
  end

  def destroy
    @organisation = Organisation.find(params[:id])
    @organisation.destroy
    redirect_to organisations_path
  end

  private

  def organisation_params
   params.require(:organisation).permit(:name, :address, :website, :city, :phone_number, :email, :description, :photo)
  end

end
