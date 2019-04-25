# frozen_string_literal: true

require_relative '../../../skills/wizard_skills/wizard_man_skill.rb'

describe 'WizardManSkill' do
  let(:wizard_man_skill) { WizardManSkill.new }
  describe '#name' do
    subject { wizard_man_skill.name }
    it { is_expected.to eq 'ベギラマ' }
  end
end
