class ProjectsController < ApplicationController

before_action :authenticate_client!, only: :new
  def index
    @projects = Project.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Project.create(title: project_params[:title], content: project_params[:content], price: project_params[:price], entry_deadline: project_params[:entry_deadline], start_day: project_params[:start_day], end_day: project_params[:end_day], client_id: current_client.id)
  end

  def destroy
    project = Project.find(params[:id])
     project.destroy
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project = Project.find(params[:id])
     project.update(project_params)
  end

  private
  def project_params
    params.permit(:title, :content, :price, :entry_deadline, :start_day, :end_day)
  end
end
