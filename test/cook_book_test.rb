require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

class CookBookTest < Minitest::Test
  def test_it_exsists
    cookbook = CookBook.new
    assert_instance_of CookBook, cookbook
  end

  def test_it_starts_with_no_recipes
    cookbook = CookBook.new
    assert_equal [], cookbook.recipes
  end

  def test_it_can_add_a_recipe
    cookbook = CookBook.new
    recipe2 = Recipe.new("Cheese Burger")

    cookbook.add_recipe(recipe2)

    assert_equal [recipe2], cookbook.recipes
  end

  def test_it_can_add_multiple_recipes
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")

    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    assert_equal [recipe1, recipe2], cookbook.recipes
  end

  
end