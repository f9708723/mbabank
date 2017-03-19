class ProjectsController < ApplicationController

  def index
    @projects = Project.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Project.create(title: project_params[:title], content: project_params[:content], price: project_params[:price], start_day: project_params[:start_day], end_day: project_params[:end_day])
  end

  def destroy
    project = Project.find(params[:id])
     project.destroy
  end

 private
  def project_params
    params.permit(:title, :content, :price, :start_day, :end_day)
  end
end
