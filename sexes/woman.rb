require_relative "../sex.rb"

class Woman < Sex
  attr_reader :name
  def initialize
    @name = "women"
  end

  def offence
    0
  end

  def defence
    5
  end
end