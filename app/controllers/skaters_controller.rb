class SkatersController < ApplicationController
  def index
    @skaters = Skater.all
  end

  def new
    @skater = Skater.new
  end

  def create
    @skater = Skater.create(skater_params)
  end

  def edit
  end

  def destroy
  end
  private
  def skater_params
    params.require(:skater).permit(:name, :city, :password, :password_confirmation)
end
