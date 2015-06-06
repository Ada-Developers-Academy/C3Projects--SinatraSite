class Project
  require "csv"

  attr_reader :title, :subtitle, :description, :image_one, :image_two,
    :local_url, :live_url, :repo_url

  # Url = Struct.new(name, path, title) # why you no work?
  def initialize(project_hash)
    @title = project_hash["title"]
    @subtitle = project_hash["subtitle"]
    @description = project_hash["description"]

    @image_one = project_hash["image1"] ? Image.new({
      path: project_hash["image1"],
      description: project_hash["image1_text"]
      }) : nil

    @image_two = project_hash["image2"] ? Image.new({
      path: project_hash["image2"],
      description: project_hash["image2_text"]
      }) : nil

    @local_url = project_hash["local_url"] ? Link.new({
      name: @title,
      path: project_hash["local_url"],
      title: project_hash["local_text"]
      }) : nil
    @live_url = project_hash["live_url"] ? Link.new({
      name: @title,
      path: project_hash["live_url"],
      title: project_hash["live_text"]
      }) : nil
    @repo_url = project_hash["repo_url"] ? Link.new({
      name: @title,
      path: project_hash["repol_url"],
      title: project_hash["repo_text"]
      }) : nil
  end

  def self.all_projects
    projects = {}

    CSV.read("support/projects.csv", { headers: true }).each do |project|
      proj = Project.new(project)

      projects["#{ proj.local_url.path }"] = proj
    end

    return projects
  end
end


class Link
  attr_reader :name, :path, :title

  def initialize(link_hash)
    @name = link_hash[:name]
    @path = link_hash[:path]
    @title = link_hash[:title]
  end

  def html(around_what=nil)
    "<a href='#{ path }' title='#{ title }'>#{ around_what || name }</a>"
  end
end


class Image
  attr_reader :path, :description

  def initialize(image_hash)
    @path = image_hash[:path]
    @description = image_hash[:description]
  end

  def html
    "<img src='#{ path }' alt='#{ description }' title='#{ description }' />"
  end
end
