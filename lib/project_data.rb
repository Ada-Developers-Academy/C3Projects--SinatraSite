module Projects
  PROJECTS_DATA = [
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

  class Project
    attr_reader :url, :name, :datestamp, :date
    def initialize(url, name, datestamp, date)
      @url = url
      @name = name
      @datestamp = datestamp
      @date = date
    end

    # turns the raw data into instances of Project
    def self.all_projects
      PROJECTS_DATA.collect do |project|
        # the splat unrolls the array `project`
        # to provide the sufficient number of arguments
        Project.new(*project)
      end
    end

    def self.find_project(project_url)
      project = PROJECTS_DATA.find { |url, name, datestamp, date| url == project_url}
      Project.new(*project)
    end
  end
end
