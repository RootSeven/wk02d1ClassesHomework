require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_homework.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

# Getter tests

  def test_get_name()
    composer = Composer.new("Erik Satie", 1866, 1925, ["20th century", "avant-garde"])
    composer_name = composer.name()
    assert_equal("Erik Satie", composer_name)
  end

  def test_get_birth_year()
    composer = Composer.new("Erik Satie", 1866, 1925, ["20th century", "avant-garde"])
    composer_birth_year = composer.birth_year
    assert_equal(1866, composer_birth_year)
  end

  def test_get_death_year()
    composer = Composer.new("Erik Satie", 1866, 1925, ["20th century", "avant-garde"])
    composer_death_year = composer.death_year
    assert_equal(1925, composer_death_year)
  end

  def test_get_period_style()
    composer = Composer.new("Erik Satie", 1866, 1925, ["20th century", "avant-garde"])
    composer_period_style = composer.period_style
    assert_equal(["20th century", "avant-garde"], composer_period_style)
  end

# Setter tests

  def test_set_name()
    composer = Composer.new("Claude Debussy", 1866, 1925, ["20th century", "avant-garde"])
    composer.name = ("Erik Satie")
    assert_equal("Erik Satie", composer.name())
  end

  def test_set_birth_year()
    composer = Composer.new("Erik Satie", 1825, 1925, ["20th century", "avant-garde"])
    composer.birth_year = 1866
    assert_equal(1866, composer.birth_year())
  end

  def test_set_death_year()
    composer = Composer.new("Erik Satie", 1866, 1950, ["20th century", "avant-garde"])
    composer.death_year = (1925)
    assert_equal(1925, composer.death_year())
  end

  def test_set_period_style()
    composer = Composer.new("Claude Debussy", 1866, 1925, ["16th century", "baroque"])
    composer.period_style = ["19th century", "avant-garde"]
    assert_equal(["19th century", "avant-garde"], composer.period_style())
  end

# Method tests

  def test_add_period_style()
    composer = Composer.new("Erik Satie", 1866, 1925, ["20th century", "avant-garde"])
    composer.add_period_style("minimalist")
    assert_equal(["20th century", "avant-garde", "minimalist"], composer.period_style)
  end

end
