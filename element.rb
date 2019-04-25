# frozen_string_literal: true

class Element
  def attack
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def defence
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def warrior_correction
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def wizard_correction
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end

  def fighter_correction
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
