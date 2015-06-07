module Projects
  class Project
    attr_reader :url, :name, :datestamp, :date, :github, :image, :image_alt, :image_src

    def initialize(project_data)
      @url = project_data[:url]
      @name = project_data[:name]
      @datestamp = project_data[:datestamp]
      @date = project_data[:date]
      @github = project_data[:github]
      @image = project_data[:image]
      @image_alt = project_data[:image_alt]
      @image_src = project_data[:image_src]
    end

    def self.all
      projects = []

      CSV.open('support/project_data.csv', 'r').each do |row|
        project_data = {
          url: row[0].to_s,
          name: row[1].to_s,
          datestamp: row[2].to_s,
          date: row[3].to_s,
          github: row[4].to_s,
          image: row[5].to_s,
          image_alt: row[6].to_s,
          image_src: row[7].to_s
        }

        projects.push(Project.new(project_data))
      end

      return projects
    end

    def self.find_project(project_url)
      return project = all.find { |item| item.url == project_url}
    end
  end
end
