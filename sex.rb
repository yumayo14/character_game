class Sex
  def offence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def defence
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end
