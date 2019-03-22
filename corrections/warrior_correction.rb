class WarriorCorrection
  def initialize(element, equipment)
    @element = element
    @equipment = equipment
  end

  def offence_correction
    return 20 if @equipment == "sword"
    0
  end

  def defence_correction
    return 10 if @element == "water"
    0
  end
end