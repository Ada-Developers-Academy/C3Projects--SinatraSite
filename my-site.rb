require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader
  PROJECTS = [
    ["sinatra-site", "Sinatra Site", "2015-06-08", "June 2&ndash;8"],
    ["bank-account", "Bank Account", "2015-05-31", "May 28&ndash;31"],
    ["scrabble", "Scrabble", "2015-05-27", "May 26&ndash;27"],
    ["farmar", "FarMar", "2015-05-22", "May 19&ndash;22"],
    ["hangman", "Hangman", "2015-05-15", "May 14&ndash;15"],
    ["solar-system", "Solar System", "2015-05-12", "May 12"],
    ["orange-tree", "Orange Tree", "2015-05-11", "May 11"],
    ["random-menu-generator", "Random Menu Generator", "2015-05-08", "May 8"],
    ["calculator", "Calculator", "2015-05-07", "May 7"]
  ]

  get "/" do
    @title = "Ada Projects"
    @projects = PROJECTS
    erb :index
  end

  get "/:project" do
    # @title, @project = params[:project]
    project_url = params[:project]
    project_info = PROJECTS.find { |url, project, datestamp, date| url == project_url}
    @title = project_info[1]
    @project = project_info[1]
    @datestamp = project_info[2]
    @date = project_info[3]
    erb :project_page
  end
end
