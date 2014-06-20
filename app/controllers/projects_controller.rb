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

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project = Project.update_attributes(project_params)

    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path
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
