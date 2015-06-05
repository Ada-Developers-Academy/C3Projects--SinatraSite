require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader


  # TITLES = ["about", "blog", "projects", "publications in psychology")

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



  # get "/:name" do
  #   @page_title = params[:name]
  # end


  # get "/about" do
  #   send_file 'public/about.erb'
  # end
  #
  # get "/blog" do
  #   send_file 'public/blog.erb'
  # end
  #
  # get "/projects" do
  #   send_file 'public/projects.erb'
  # end
  #
  # get "/pubs" do
  #   send_file 'public/publications.erb'
  # end

end
