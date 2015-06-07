require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
  register Sinatra::Reloader

  get '/' do
    @title = "Home Elia Grenier"
    @page_title = "Elia Grenier | M.Ed. to Dev"
    erb :home
  end

  get '/blog' do
    @title = "Blog"
    @page_title = "Life as an Adie"
    erb :blog
  end

  get '/about' do
    @title = "About the Author"
    @page_title = @title
    @subheader = "Elia Grenier | M.Ed. to Dev"
    erb :about
  end

  get '/projects' do
    @title = "Class Projects"
    @page_title = @title
    @subheader = "We are using GitHub to collaborate on and turn in our projects"
    erb :projects
  end

  get '/food' do
    @title = "Foodie Fun"
    @page_title = @title
    @subheader = "I like to cook and eat delicious food"
    erb :food
  end


end
