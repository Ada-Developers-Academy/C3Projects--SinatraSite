require "sinatra"
require "sinatra/reloader"
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

  get "/projects" do
    @projects = Project.all_projects
    erb :projects
  end

  get "/:project_key" do
    projects = Project.all_projects
    @project = projects["/" + params[:project_key]]
    erb :project_form
  end
end
