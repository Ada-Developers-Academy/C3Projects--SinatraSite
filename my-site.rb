require "sinatra"
require "sinatra/reloader"
require "./lib/project_data"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    @title = "Ada Projects"
    @projects = Projects::Project.all_projects
    erb :index
  end

  get "/:project" do
    project_url = params[:project]
    @project = Projects::Project.find_project(project_url)
    @title = @project.name
    erb :project_page
  end
end
