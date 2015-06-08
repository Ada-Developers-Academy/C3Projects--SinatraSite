module Marleigh
NAMES = %w(home about_me projects blog espresso)

  class Page
    attr_reader :name

    def initialize(name)
    @name = name
    end

    def page_path
        "/#{name}"
    end
  end
end
