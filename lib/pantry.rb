class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    if @stock[ingredient].nil?
      @stock[ingredient] = quantity
    else
      @stock[ingredient] += quantity
    end
  end

  def stock_quanitities(recipe)
    hash = {}
    recipe.ingredients_required.map do |ingredient, quantity|
      if hash[ingredient.name].nil?
        hash[ingredient.name] = quantity
      else
        hash[ingredient.name] = quantity
      end
    end
    hash
  end

  def enough_ingredients_for?(recipe)
    stock_quanitities(recipe)
    @stock 
    # @stock.include?(recipe.ingredients_required) && @stock[recipt.ingredients]
  end
end
