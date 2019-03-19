class Fighter
  attr_reader :job, :element, :equipment
  def initialize(el, eq)
    @job = "武闘家"
    @element = el
    @equipment = eq
  end
end