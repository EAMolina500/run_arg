class RaceResultsController < ApplicationController
  def index
    @race_results = RaceResult.all
  end

  def show
    @race_result = RaceResult.find(params[:id])
  end

  def new
    @race_result = RaceResult.new
  end

  def create
    @race_result = RaceResult.new(race_result_params)
    if @race_result.save
      redirect_to @race_result, notice: 'Race Result was successfully created.'
    else
      render :new
    end
  end

  def edit
    @race_result = RaceResult.find(params[:id])
  end

  def update
    @race_result = RaceResult.find(params[:id])
    if @race_result.update(race_result_params)
      redirect_to @race_result, notice: 'Race Result was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @race_result = RaceResult.find(params[:id])
    @race_result.destroy
    redirect_to race_results_url, notice: 'Race Result was successfully destroyed.'
  end

  private

  def runner_params
    params.require(:race_result).permit(:attribute1, :attribute2, :attribute3)
  end
end
