class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @projects = current_client.projects

  end

  def edit
  end

  def update
    current_client.update(update_params)
  end

  private
  def update_params
    params.require(:client).permit(:company_name, :division, :position, :family_name, :first_name, :avatar)
  end
end
