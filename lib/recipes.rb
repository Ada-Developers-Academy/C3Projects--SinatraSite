module Recipes
  RECIPES = [ "Pesto Chicken and Sweet Potato Breakfast Bake", "Lemon Poppyseed Acorn Squash Muffins", "Braised Short Ribs over Roasted Garlic Mashed Cauliflower",
              "Simple Skirt Steak with Romesco Sauce", "Crockpot Fig Apple Butter", "Guest Post Green Tea Ice Cream with Pistachio Praline", "Guest Post Strawberry Shortcake Skillets",
              "Bacon Braised Collard Greens", "Creamy Sun-Dried Tomato Chicken Pasta", "Breakfast On The Go Sausage Egg Cups"
            ]


  class Recipe
    attr_reader :name

    def initialize(name)
      @name = name
    end

    def link_path
      index = RECIPES.find_index(@name)
      @link = "http://paleomg.com/#{RECIPES[index].gsub(/\s/, "-").downcase}"

    end

    def self.all_recipes
      RECIPES.map { |name| Recipe.new(name) }
    end

  end
end