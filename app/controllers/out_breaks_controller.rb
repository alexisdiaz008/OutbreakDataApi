class OutBreaksController < ApplicationController
  before_action :set_out_break, only: [:show, :update, :destroy]

  def index
    @out_breaks = OutBreak.all
    render json: @out_breaks
  end

  def show
    render json: @out_break
  end

  def create
    @out_break = OutBreak.new(out_break_params)
    if @out_break.save
      render json: @out_break, status: :created, location: @out_break
    else
      render json: @out_break.errors, status: :unprocessable_entity
    end
  end

  def update
    if @out_break.update(out_break_params)
      render json: @out_break
    else
      render json: @out_break.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @out_break.destroy
  end

  private

  def set_out_break
    @out_break = OutBreak.find(params[:id])
  end

  def out_break_params
    params.require(:out_break).permit(:report_date, :state, :primary_mode, :etiology, :serotype_or_genotype, :etiology_status, :setting, :illnesses, :hospitalizations, :deaths)
  end
end