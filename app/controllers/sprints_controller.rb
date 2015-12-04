class SprintsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @sprint = Sprint.find(params[:id])
  end

  def new
    @project = Project.find(params[:project_id])
    @sprint = @project.sprints.new
  end

  def create
    sprint = Sprint.create(sprint_params)
    redirect_to project_sprint_path(project_id: 1, id: sprint.id)
  end

  def sprint_params
    params.require(:sprint).permit(:votes)
  end  
end
