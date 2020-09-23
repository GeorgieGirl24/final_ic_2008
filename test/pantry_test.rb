require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def test_it_exsists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_starts_with_an_empty_pantry
    pantry = Pantry.new
    assert_equal  ({}), pantry.stock
  end

  def test_it_can_check_the_stock_of_an_ingredient_in_pantry
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_it_can_restock_an_ingredient_in_pantry
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)
  end

  def test_it_can_stock_another_item_in_pantry
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    pantry.restock(ingredient2, 7)

    assert_equal 7, pantry.stock_check(ingredient2)
  end 
end
