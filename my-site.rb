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

  get "/projects/:project_name" do
    erb :project_name
  end

  get "/projects/set-clone" do
    erb :set_clone
  end

  get "/projects/euler-problems" do
    erb :euler_problems
  end
end
