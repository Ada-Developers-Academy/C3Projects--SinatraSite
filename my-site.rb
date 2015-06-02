require "sinatra"
require "sinatra/reloader"

class MySite < Sinatra::Base
# Sinatra is a module and Reloader is a class
# register activates the Reloader
  register Sinatra::Reloader

  get "/home" do
    send_file './about_me_html/home_page.html'
  end

  get "/about" do
    send_file "about_me_html/about_page.html"
  end

  get "/blog" do
    send_file "about_me_html/blog_post.html"
  end

  get "/projects" do
    send_file "about_me_html/projects_page.html"
  end
end
