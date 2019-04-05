class PowerChecker
  attr_reader :members
  def initialize(members)
    @members = members
  end

  def strongest_character
    members.max_by { |character| character.attack + character.defence }
  end
end
