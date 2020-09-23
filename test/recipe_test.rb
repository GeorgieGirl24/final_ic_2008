require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class RecipeTest < Minitest::Test
  def test_it_exsists_and_has_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    assert_instance_of Recipe, recipe1
    assert_equal "Mac and Cheese", recipe1.name
  end

  def test_it_starts_with_no_ingredients_required
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_it_can_add_an_ingredient
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})

    recipe1.add_ingredient(ingredient1, 2)
    expected = { ingredient1 => 2 }
    assert_equal expected, recipe1.ingredients_required
  end

  def test_it_can_add_multiple_times_the_same_ingredient_and_it_will_add
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})

    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    expected = { ingredient1 => 6 }

    assert_equal expected, recipe1.ingredients_required
  end

  
end
