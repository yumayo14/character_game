# frozen_string_literal: true

require_relative '../equipment'

class Sword < Equipment
  attr_reader :name
  def initialize
    @name = 'sword'
  end

  def attack
    30
  end

  def defence
    30
  end

  def warrior_correction
    20
  end

  def wizard_correction
    0
  end

  def fighter_correction
    0
  end
end
