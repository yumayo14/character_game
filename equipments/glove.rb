require_relative "../equipment"

class Glove < Equipment
  attr_reader :name
  def initialize
    @name = "glove"
  end

  def offence
    20
  end

  def defence
    20
  end
end