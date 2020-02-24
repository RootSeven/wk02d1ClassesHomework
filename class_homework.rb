class Composer

  attr_accessor :name, :birth_year, :death_year, :period_style

  def initialize(name, birth_year, death_year, period_style)
    @name = name
    @birth_year = birth_year
    @death_year = death_year
    @period_style = period_style
  end

  def add_period_style(period_style)
    @period_style.push(period_style)
  end

end
