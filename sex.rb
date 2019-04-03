class Sex
  def attack
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def defence
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
