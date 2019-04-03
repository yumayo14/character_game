require_relative "../../../skills/wizard_skills/wizard_woman_skill.rb"

describe "WizardWomanSkill" do
  let(:wizard_woman_skill) { WizardWomanSkill.new }
  describe "#name" do
    subject { wizard_woman_skill.name }
    it { is_expected.to eq "メラミ" }
  end
end
