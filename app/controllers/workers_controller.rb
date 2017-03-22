class WorkersController < ApplicationController
  def show
    @worker = Worker.find(params[:id])
  end

  def index
    @workers = Worker.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def edit
  end

  def update
    current_worker.update(update_params)
  end

  private
  def update_params
    params.require(:worker).permit(:family_name, :first_name, :sex, :age, :specialized_industry, :specialized_theme, :self_introduction, :avatar)
  end
end
