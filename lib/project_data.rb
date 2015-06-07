module Projects
  # PROJECTS_DATA = [
  #   ["sinatra-site", "Sinatra Site", "2015-06-08", "June 2&ndash;8", "https://github.com/amirahaile/C3Projects--SinatraSite"],
  #   ["bank-account", "Bank Account", "2015-05-31", "May 28&ndash;31", "https://github.com/amirahaile/C3Projects--BankAccounts"],
  #   ["scrabble", "Scrabble", "2015-05-27", "May 26&ndash;27", "https://github.com/amirahaile/C3Projects--Scrabble"],
  #   ["farmar", "FarMar", "2015-05-22", "May 19&ndash;22", "https://github.com/Ada-Developers-Academy/C3Projects--FarMarFinder/tree/adh+bew/master"],
  #   ["hangman", "Hangman", "2015-05-15", "May 14&ndash;15", "https://github.com/amirahaile/C3Projects--Hangman"],
  #   ["solar-system", "Solar System", "2015-05-12", "May 12", "https://github.com/amirahaile/C3Projects--SolarSystem"],
  #   ["orange-tree", "Orange Tree", "2015-05-11", "May 11", "https://github.com/amirahaile/C3Projects--OrangeTree"],
  #   ["random-menu-generator", "Random Menu Generator", "2015-05-08", "May 8", "https://github.com/amirahaile/C3Projects--RandomMenuGenerator"],
  #   ["calculator", "Calculator", "2015-05-07", "May 7", "https://github.com/amirahaile/C3Projects--Calculator"]
  # ]

  class Project
    attr_reader :url, :name, :datestamp, :date, :github
    def initialize(project_data)
      @url = project_data[:url]
      @name = project_data[:name]
      @datestamp = project_data[:datestamp]
      @date = project_data[:date]
      @github = project_data[:github]
    end

    # turns the raw data into instances of Project
    # def self.all_projects
    #   PROJECTS_DATA.collect do |project|
    #     # the splat unrolls the array `project`
    #     # to provide the sufficient number of arguments
    #     Project.new(*project)
    #   end
    # end
    def self.all
      projects = []

      CSV.open('support/project_data.csv', 'r').each do |row|
        project_data = {
          url: row[0].to_s,
          name: row[1].to_s,
          datestamp: row[2].to_s,
          date: row[3].to_s,
          github: row[4].to_s,
        }

        projects.push(Project.new(project_data))
      end

      return projects
    end

    def self.find_project(project_url)
      project = all.find { |item| item.url == project_url}

      project_data = {
        url: project.url,
        name: project.name,
        datestamp: project.datestamp,
        date: project.date,
        github: project.github,
      }

      Project.new(project_data)
    end
  end
end
