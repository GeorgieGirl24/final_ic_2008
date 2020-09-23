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

  def ingredients
    @ingredients_required.map do |ingredient, quantity|
      ingredient
    end.uniq
  end

  def ingredients_names
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

  def total_calories
    @ingredients_required.sum do |ingredient, quantity|
      ingredient.calories * quantity
    end
  end
end
