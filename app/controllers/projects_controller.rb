class ProjectsController < ApplicationController

  def index
    @project = Project.new
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    if @project.save

    redirect_to projects_path
    end
  end

  private

  def project_params
    params.require(:project).permit(
      :name,
      :description,
      :url
    )
  end
end
