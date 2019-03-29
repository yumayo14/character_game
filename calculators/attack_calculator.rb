class AttackCalculator
  attr_reader :sex, :element, :equipment
  def initialize(job)
    @sex = job.sex
    @element = job.element
    @equipment = job.equipment
  end

  def calculate
    sex.attack + element.attack + equipment.attack + correction
  end

private
  def correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def equipment_correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end