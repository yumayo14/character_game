require_relative "../element.rb"

class Thunder < Element
  attr_reader :name
  def initialize
    @name = "thunder"
  end

  def offence
    15
  end

  def defence
    0
  end
end