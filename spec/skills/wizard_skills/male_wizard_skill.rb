require_relative "../../../skills/wizard_skills/male_wizard_skill.rb"

describe "MaleWizardSkill" do
  let(:male_wizard_skill) { MaleWizardSkill.new }
  describe "#name" do
    subject { male_wizard_skill.name }
    it { is_expected.to eq "ベギラマ" }
  end
end