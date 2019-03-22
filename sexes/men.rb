require_relative "../sex.rb"

class Men < Sex
  attr_reader :name
  def initialize
    @name = "men"
  end

  def offence
    5
  end

  def defence
    0
  end
end