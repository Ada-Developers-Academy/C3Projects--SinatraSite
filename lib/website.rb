module Website

  class Images
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def image_path
      "/images/#{name}.jpg"
    end
  end # class Images
end # module
