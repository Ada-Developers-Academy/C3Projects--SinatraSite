module Website
  
  class Title
    attr_reader :title

    def initialize(title)
      @title = title
    end

    def link_path
      "/#{title}"
    end
  end # class Title

  class Images
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def image_path
      "images/#{name}.jpg"
    end
  end # class Images
end # module
