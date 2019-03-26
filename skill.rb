class Skill
  attr_reader :sex
  def initialize(job)
    @sex = job.sex
  end

private
  def checked_skill
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end

