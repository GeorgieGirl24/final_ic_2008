class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, quantity)
    if @ingredients_required[ingredient].nil?
      @ingredients_required[ingredient] = quantity
    else
      @ingredients_required[ingredient] += quantity
    end 
  end
end
