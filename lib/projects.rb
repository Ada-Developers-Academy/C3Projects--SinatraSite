class Project
  require "csv"

  attr_reader :title, :subtitle, :description, :image_one_path, :image_one_text,
    :image_two_path, :image_two_text

  IMAGE_ROOT = "/images/"

  def initialize(project_hash) # i forgot how headers work??
    @title = project_hash[0]
    @subtitle = project_hash[1]
    @project_path = project_hash[2]
    @description =  project_hash[3]
    @image_one_path = IMAGE_ROOT + project_hash[4]
    @image_one_text = project_hash[5]
    @image_two_path = project_hash[6] ? IMAGE_ROOT + project_hash[6] : nil
    @image_two_text = project_hash[7] ? IMAGE_ROOT + project_hash[7] : nil
  end

  def url_tag(around_what)
    "<a href=''>#{ around_what }</a>"
  end

  def create_image_tag(path, text)
    "<img src='#{ path }' alt='#{ text }' title='#{ title }' />"
  end

  def image_one
    create_image_tag(image_one_path, image_one_text)
  end

  def image_two
    @image_two_path ? create_image_tag(image_two_path, image_two_text) : image_one
  end

  def self.all_projects
    projects = []

    # CSV.open("../../c3-contact-info~.csv", 'r', headers: true)
    CSV.read("support/projects.csv", headers: true).each do |project|
      projects.push(Project.new(project))
    end

    return projects
  end
end
