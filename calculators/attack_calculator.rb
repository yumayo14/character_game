class AttackCalculator
  attr_reader :sex, :element, :equipment
  def initialize(job)
    @sex = job.sex
    @element = job.element
    @equipment = job.equipment
  end

  def calculate
    sex.attack + equipment.attack + element.attack + correction
  end

  private

  def correction
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
