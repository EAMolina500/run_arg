class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)
    if @race.save
      redirect_to @race, notice: 'Race was successfully created.'
    else
      render :new
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])
    if @race.update(race_params)
      redirect_to @race, notice: 'Race was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @race = Race.find(params[:id])
    @race.destroy
    redirect_to races_url, notice: 'Race was successfully destroyed.'
  end

  private

  def race_params
    params.require(:race).permit(:attribute1, :attribute2, :attribute3)
  end
end
