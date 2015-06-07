require "sinatra"
require "sinatra/reloader"
# require "./lib/ruby.rb"   # NOTE: Should this be require_relative?

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get "/" do
    erb :home
  end

  get "/home" do
    @title = "Home"
    erb :home
  end

  get "/about" do
    @title = "About"
    erb :about
  end

  get "/blog" do
    @title = "Blog"
    erb :blog
  end

  get "/projects" do
    @title = "Projects"
    erb :projects
  end
end
