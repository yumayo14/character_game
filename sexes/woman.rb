# frozen_string_literal: true

require_relative '../sex.rb'

class Woman < Sex
  attr_reader :name
  def initialize
    @name = 'woman'
  end

  def attack
    0
  end

  def defence
    5
  end
end
