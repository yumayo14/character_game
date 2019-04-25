# frozen_string_literal: true

require_relative '../../skills/warrior_skill.rb'
require_relative '../../jobs/warrior.rb'

describe 'WarriorSkill' do
  let(:warrior_skill) { WarriorSkill.new(warrior) }
  let(:warrior) { Warrior.new(sex: sex, element: wind, equipment: sword) }
  let(:wind) { Wind.new }
  let(:sword) { Sword.new }
  describe '#name' do
    subject { warrior_skill.name }
    context '性別が男性の場合' do
      let(:sex) { Man.new }
      it { is_expected.to eq 'ギガスラッシュ' }
    end
    context '性別が女性の場合' do
      let(:sex) { Woman.new }
      it { is_expected.to eq 'ビッグバン' }
    end
  end
end
