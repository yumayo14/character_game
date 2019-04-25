# frozen_string_literal: true

require_relative 'job.rb'
require_relative 'character_factory.rb'
require_relative 'character_checker.rb'

class Guild
  attr_reader :member
  def initialize
    @member = all_character
  end

  def best_characters
    CharacterChecker.new(member).best_characters
  end

  def best_attackers
    CharacterChecker.new(member).best_attackers
  end

  def best_defenders
    CharacterChecker.new(member).best_defenders
  end

  private

  def all_character
    CharacterFactory.all_characters(Fighter) + CharacterFactory.all_characters(Warrior) + CharacterFactory.all_characters(Wizard)
  end
end
