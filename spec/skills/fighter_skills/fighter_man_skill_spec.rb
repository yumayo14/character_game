require_relative '../../../skills/fighter_skills/fighter_man_skill.rb'

describe FighterManSkill do
  let(:fighter_man_skill) { FighterManSkill.new }
  it 'ブーストが返る' do
    expect(fighter_man_skill.name).to eq 'ブースト'
  end
end
