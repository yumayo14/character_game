require_relative "../element.rb"

class Wind < Element
  attr_reader :name
  def initialize
    @name = "wind"
  end

  def attack
    5
  end

  def defence
    10
  end
end