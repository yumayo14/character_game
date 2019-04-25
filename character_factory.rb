# frozen_string_literal: true

require_relative 'jobs/fighter'
require_relative 'jobs/warrior'
require_relative 'jobs/wizard'

class CharacterFactory
  def self.all_characters(job)
    member = []
    [Man, Woman].each do |sex|
      [Wind, Water, Thunder].each do |element|
        [Sword, Stick, Glove].each do |equipment|
          member << job.new(sex: sex.new, element: element.new, equipment: equipment.new)
        end
      end
    end
    member
  end
end
