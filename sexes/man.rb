# frozen_string_literal: true

require_relative '../sex.rb'

class Man < Sex
  attr_reader :name
  def initialize
    @name = 'man'
  end

  def attack
    5
  end

  def defence
    0
  end
end
