module Marleigh
NAMES = %w(
  home about_me projects blog espresso
  )

  class Page
    attr_reader :name

    def initialize(name)
    @name = name
    end

    def page_path
        "/#{name}"
    end
      
      def self.me
        NAMES.map {|name| Page.new(name) }
        
      end

  end
end
