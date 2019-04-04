require_relative '../../../skills/warrior_skills/warrior_man_skill.rb'

describe 'WarriorManSkill' do
  let(:warrior_man_skill) { WarriorManSkill.new }
  it 'ギガスラッシュが返る' do
    expect(warrior_man_skill.name).to eq 'ギガスラッシュ'
  end
end
