# frozen_string_literal: true

require_relative '../../../skills/fighter_skills/fighter_woman_skill.rb'

describe FighterWomanSkill do
  let(:fighter_woman_skill) { FighterWomanSkill.new }
  it 'カウンターが返る' do
    expect(fighter_woman_skill.name).to eq 'カウンター'
  end
end
