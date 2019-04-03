class Equipment
  def attack
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def warrior_correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def wizard_correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def fighter_correction
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
