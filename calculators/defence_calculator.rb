class DefenceCalculator
  attr_reader :sex, :element, :equipment
  def initialize(args)
    @sex = args[:sex]
    @element = args[:element]
    @equipment = args[:equipment]
  end

  def calculate
    @sex.defence + @element.defence + @equipment.defence + correction
  end

private
  def correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end