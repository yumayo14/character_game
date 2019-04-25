# frozen_string_literal: true

class CharacterChecker
  attr_reader :characters

  def initialize(characters)
    @characters = characters
  end

  def best_characters
    characters.select { |character| character.attack + character.defence == highest_parameter }
  end

  def best_attackers
    characters.select { |character| character.attack == highest_attack_point }
  end

  def best_defenders
    characters.select { |character| character.defence == highest_defence_point }
  end

  private

  def highest_parameter
    characters.map { |character| character.attack + character.defence }.max
  end

  def highest_attack_point
    characters.map(&:attack).max
  end

  def highest_defence_point
    characters.map(&:defence).max
  end
end
