require_relative "../../skills/fighter_skill.rb"
require_relative "../../jobs/fighter.rb"

describe "FighterSkill" do
  let(:fighter_skill) { FighterSkill.new(fighter) }
  let(:fighter) { Fighter.new(sex: sex, element: wind, equipment: sword) }
  let(:wind) { Wind.new }
  let(:sword) { Sword.new }
  describe "#name" do
    subject { fighter_skill.name }
    context "性別が男性の場合" do
      let(:sex) { Man.new }
      it { is_expected.to eq "ブースト" }
    end
    context "性別が女性の場合" do
      let(:sex) { Woman.new }
      it { is_expected.to eq "カウンター" }
    end
  end
end