class ProjectsController < ApplicationController
  before_action :authenticate_admin!, except: [:show , :index]

  def index
    if params[:category]
      @projects = Project.where(:category => params[:category])
    else
    @projects = Project.all
  end
end
  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
     end

  def create
    @project = Project.new(project_params)

    if @project.save
    redirect_to @project
    else
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end


  def show
    @projects = Project.all
    @project = Project.find(params[:id])
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to projects_path

  end


end

private

def project_params
  params.require(:project).permit(:title, :body , :description,  {images: []}, :category)
end
