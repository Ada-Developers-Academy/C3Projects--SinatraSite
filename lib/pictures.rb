module Pictures
  PICTURES = %w(flower-trail foggy-trail lake-chelan morning-light mushroom ridge-valley
                sunset switchbacks valley-clouds)

  class Picture
    attr_reader :name
    
    def initialize(name)
      @name = name
    end

    def image_path
      "/images/landscapes/#{name}.jpg"
    end

    def self.all_the_pics
      PICTURES.map { |name| Picture.new(name) }
    end
  end
end
