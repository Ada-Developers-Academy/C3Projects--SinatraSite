require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  def year
    @year = Time.now.year
  end

  get "/" do
    @title = "Sally A. Moore"
    erb :home
  end

  get "/about" do
    @title = "Sally Moore - about"
    @page_title = "about me"
    erb :about
  end

  get "/blog" do
    @title = "Sally Moore - blog"
    @page_title = "blog"
    erb :blog
  end

  get "/projects" do
    @title = "Sally Moore - projects"
    @page_title = "ADA projects"
    erb :projects
  end

  get "/pubs" do
    @title = "Sally Moore - publications"
    @page_title = "publications in psychology"
    erb :publications
  end

end
