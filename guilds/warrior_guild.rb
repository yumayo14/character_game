require_relative '../guild'
require_relative '../jobs/warrior'

class WarriorGuild
  attr_reader :members
  def initialize
    @members = []
    set_character
  end

  def set_character
    [Man.new, Woman.new].each do |sex|
      [Wind.new, Water.new, Thunder.new].each do |element|
        [Sword.new, Stick.new, Glove.new].each do |equipment|
          @members << Warrior.new(sex: sex, element: element, equipment: equipment)
        end
      end
    end
  end
end
