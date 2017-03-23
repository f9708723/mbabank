class ProposalsController < ApplicationController
  before_action :authenticate_worker!, only: :new

  def new
    @project = Project.find(params[:project_id])
    @proposal = Proposal.new
  end

  def create
    Proposal.create(create_params)
    redirect_to controller: :projects, action: :index
    # トップページにリダイレクトする
  end

  private
  def create_params
    params.require(:proposal).permit(:content, :estimate).merge(project_id: params[:project_id], worker_id: current_worker.id)
  end

end
