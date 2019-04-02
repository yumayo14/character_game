require_relative "../../jobs/wizard.rb"
require_relative "../../skills/wizard_skill.rb"

describe "WizardSkill" do
  let(:wizard_skill) { WizardSkill.new(wizard) }
  let(:wizard) { Wizard.new(sex: sex, element: wind, equipment: sword) }
  let(:wind) { Wind.new }
  let(:sword) { Sword.new }
  describe "#name" do
    subject { wizard_skill.name }
    context "性別が男性の場合" do
      let(:sex) { Man.new }
      it { is_expected.to eq "ベギラマ" }
    end
    context "性別が女性の場合" do
      let(:sex) { Woman.new }
      it { is_expected.to eq "メラミ" }
    end
  end
end