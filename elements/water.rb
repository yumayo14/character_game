require_relative "../element.rb"

class Water < Element
  attr_reader :name
  def initialize
    @name = "water"
  end

  def attack
    10
  end

  def defence
    5
  end
end