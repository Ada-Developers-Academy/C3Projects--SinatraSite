require "sinatra"
require "sinatra/reloader"
require "csv" # this is necessary for the projects stuff. n_n
require_relative "lib/projects"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :index
  end

  get "/about" do
    erb :about
  end

  get "/contact" do
    erb :contact
  end

  get "/blag" do
    erb :blag
  end

  # this is my second favorite part of this project.
  get "/projects" do
    @projects = Project.all_projects
    erb :projects
  end

  # this is my absolute favorite part of this project.
  get "/:project_key" do
    projects = Project.all_projects
    @project = projects["/" + params[:project_key]]
    @name = @project.title
    erb :project_form
  end
end
