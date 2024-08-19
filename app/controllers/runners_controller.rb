class RunnersController < ApplicationController
  def index
    @runners = Runner.all
  end

  def show
    @runner = Runner.find(params[:id])
  end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to @runner, notice: 'Runner was successfully created.'
    else
      render :new
    end
  end

  def edit
    @runner = Runner.find(params[:id])
  end

  def update
    @runner = Runner.find(params[:id])
    if @runner.update(runner_params)
      redirect_to @runner, notice: 'Runner was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @runner = Runner.find(params[:id])
    @runner.destroy
    redirect_to runners_url, notice: 'Runner was successfully destroyed.'
  end

  private

  def runner_params
    params.require(:runner).permit(:attribute1, :attribute2, :attribute3)
  end
end
