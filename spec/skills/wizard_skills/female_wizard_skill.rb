require_relative "../../../skills/wizard_skills/female_wizard_skill.rb"

describe "FemaleWizardSkill" do
  let(:female_wizard_skill) { FemaleWizardSkill.new }
  describe "#name" do
    subject { female_wizard_skill.name }
    it { is_expected.to eq "メラミ" }
  end
end