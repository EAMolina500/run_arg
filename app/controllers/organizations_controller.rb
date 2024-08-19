class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to @organization, notice: 'Organization was successfully created.'
    else
      render :new
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      redirect_to @organization, notice: 'Organization was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_url, notice: 'Organization was successfully destroyed.'
  end

  private

  def organization_params
    params.require(:organization).permit(:attribute1, :attribute2, :attribute3)
  end
end
