require_relative '../../../skills/warrior_skills/warrior_woman_skill.rb'

describe 'WarriorWomanSkill' do
  let(:warrior_woman_skill) { WarriorWomanSkill.new }
  it 'ビッグバンが返る' do
    expect(warrior_woman_skill.name).to eq 'ビッグバン'
  end
end
