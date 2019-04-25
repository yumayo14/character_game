# frozen_string_literal: true

class Skill
  attr_reader :sex
  def initialize(job)
    @sex = job.sex
  end

  private

  def checked_skill
    raise NotImplementedError, "You must implement #{self.class}##{__method__}"
  end
end
