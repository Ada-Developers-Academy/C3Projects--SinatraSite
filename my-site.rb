require "sinatra"
require "sinatra/reloader"
require "csv" # this is necessary for the projects stuff. n_n
require_relative "lib/projects"
# require_relative "lib/cthulhu"

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

  get "/form" do
    erb :form
  end

  post "/form" do
    @form_data = params["form_data"]
    @name = @form_data["name"]
    @reply = @form_data["reply"]
    @subject = @form_data["subject"]
    @tags = @form_data["tags"]
    @message = @form_data["message"]
    # ThingsThatAreFun.new(params[:fun])
    # Address.new(params[:addy])

    erb :form
  end

  get "/:project_key" do
    projects = Project.all_projects
    @project = projects["/" + params[:project_key]]

    unless @project.nil?
      @name = @project.title
      erb :project_form
    else
      # thanks to Loraine for the idea of using a 404 page! :D
      # lesson learned: 404 has to be last or other pages will just 404 themselves.
      @name = "404: Page Not Found"
      erb :bad_address
    end
  end
end
