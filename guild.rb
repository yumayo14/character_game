require_relative 'job.rb'
require_relative 'character_factory.rb'

class Guild
  attr_reader :member
  def initialize
    @member = all_character
  end

  private

  def all_character
    CharacterFactory.all_characters(Fighter) + CharacterFactory.all_characters(Warrior) + CharacterFactory.all_characters(Wizard)
  end
end
