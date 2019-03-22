class AttackCalculator
  attr_reader :sex, :element, :equipment
  def initialize(sex, element, equipment)
    @sex = sex
    @element = element
    @equipment = equipment
  end

  def calculate
    Object.const_get(sex.capitalize).new.offence + Object.const_get(element.capitalize).new.offence + Object.const_get(equipment.capitalize).new.offence
  end

  def correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end