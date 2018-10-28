class PeriodsController < ApplicationController
  before_action :find_period, only: [:show,:edit,:update,:destroy]

  def index
    if params[:q]
      @periods = Period.search(params[:q]).order("created_at DESC")
    else
      @periods = Period.all
    end
  end

  def show

  end

  def new
    @period = Period.new

  end

  def create
    @period = Period.new(period_params)
    if @period.save
      redirect_to  @period
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @period.update period_params
      redirect_to @period
    else
      render :edit
    end
  end

  def destroy
    @period.destroy
    redirect_to periods_path
  end

  private

  def find_period
    @period = Period.find(params[:id])
  end

  def period_params
    params.require(:period).permit(:name, :date_init, :date_finish)
  end
end
