class DefenceCalculator
  attr_reader :sex, :element, :equipment
  def initialize(job)
    @sex = job.sex
    @element = job.element
    @equipment = job.equipment
  end

  def calculate
    @sex.defence + @element.defence + @equipment.defence + correction
  end

private
  def correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end