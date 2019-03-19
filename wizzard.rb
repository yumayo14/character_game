class Wizzard
  attr_reader :job, :element, :equipment
  def initialize(el, eq)
    @job = "魔法使い"
    @element = el
    @equipment = eq
  end
end