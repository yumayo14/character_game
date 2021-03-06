# frozen_string_literal: true

class DefenceCalculator
  attr_reader :sex, :element, :equipment
  def initialize(job)
    @sex = job.sex
    @element = job.element
    @equipment = job.equipment
  end

  def calculate
    sex.defence + element.defence + equipment.defence + correction
  end

  private

  def correction
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
